<?php namespace Tiipiik\Catalog\Components;

use Cms\Classes\ComponentBase;
use Tiipiik\Catalog\Models\Category;
use Tiipiik\Catalog\Models\Product;
use Cms\Classes\Page;

class Breadcrumbs extends ComponentBase
{
    private $category;
    private $product;
    public $breadcrumbs = [];

    public function componentDetails()
    {
        return [
            'name'        => 'Breadcrumbs',
            'description' => 'Outputs breadcrumbs for catalog pages.'
        ];
    }

    public function defineProperties()
    {
        return [
            'categorySlug' => [
                'title'       => 'tiipiik.catalog::lang.component.product_list.param.category_param_title',
                'description' => 'tiipiik.catalog::lang.component.product_list.param.category_param_desc',
                'default'     => '{{ :category }}',
                'type'        => 'string'
            ],
            'itemSlug' => [
                'title'       => 'Product slug',
                'description' => '',
                'default'     => '{{ :product }}',
                'type'        => 'string',
            ],
            'withHomePage' => [
                'title'       => 'Start with Home Page',
                'description' => '',
                'type'        => 'string',
                'default'     => 'Home',
            ],
            'catalogPage' => [
                'title'       => 'Catalog start page',
                'description' => '',
                'type'        => 'dropdown',
                'default'     => '',
            ],
            'categoryPage' => [
                'title'       => 'tiipiik.catalog::lang.component.categories.param.category_page_title',
                'description' => 'tiipiik.catalog::lang.component.categories.param.category_page_desc',
                'type'        => 'dropdown',
                'default'     => '',
            ],
        ];
    }

    public function getCategoryPageOptions()
    {
        return [''=>'- Select page -'] + Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }

    public function getCatalogPageOptions()
    {
        return [''=>'- Select page -'] + Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }

    public function onRun()
    {
        $this->category = Category::findBySlugPath($this->property('categorySlug'));
        $this->product = Product::whereSlug($this->property('itemSlug'))
                    ->whereIsPublished(1)
                    ->with('customfields')
                    ->with('categories')
                    ->with('brand')
                    ->with('stores')
                    ->first();
        $categories = $this->category->getParentsAndSelf();
        $breadcrumbs = [];
        if ($this->property('withHomePage')) {
            $breadcrumb = (object) [
                'title' => $this->property('withHomePage'),
                'url' => '/',
                'isActive' => false,
            ];
            $breadcrumbs[] = $breadcrumb;
        }

        if ($this->property('catalogPage')) {
            $catalogPage = Page::where('baseFileName', $this->property('catalogPage'))->first();
            $breadcrumb = (object) [
                'title' => $catalogPage->title,
                'url' => $catalogPage->url,
                'isActive' => false,
            ];
            $breadcrumbs[] = $breadcrumb;
        }

        foreach ($categories as $cat) {
            $breadcrumb = (object) [
                'title' => $cat->name,
                'url' => $cat->setUrl($this->property('categoryPage'), $this->controller),
            ];
            $breadcrumb->isActive = false;
            $breadcrumbs[] = $breadcrumb;
        }
        if ($this->product) {
            $breadcrumb = (object) [
                'title'    => $this->product->title,
                'url'      => '',
                'isActive' => false,
            ];
            $breadcrumbs[] = $breadcrumb;
        }

        $breadcrumbs[count($breadcrumbs)-1]->isActive = true;

        $this->breadcrumbs = $breadcrumbs;
    }

}
