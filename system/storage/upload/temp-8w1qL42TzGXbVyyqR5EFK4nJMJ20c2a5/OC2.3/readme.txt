TLT Blog for Opencart 2.x

--------
FEEDBACK
--------

If you find this software useful you can buy me a cup of tea using this link
https://www.paypal.me/AMamykin/

Get my other extensions from Opencart Extension Directory

http://www.opencart.com/index.php?route=extension/extension&filter_username=timber

If you find any errors or have any ideas feel free to contact me:

e-mail: amamykin@gmail.com

http://taiwanleaftea.com

-------
INSTALL
-------

You may use extension installer build-in opencart or manual install if you haven't configured ftp access in your opencart installation.

Install via extension installer

1. Start the opencart's extension installer and upload tltblog.ocmod.zip.

2. If you use default opencart's SEO-module you should install tltblog-seourl.ocmod.xml from /ocmods folder. 

2.1 If you use Ocstore from myopencart.com you should install tltblog-seopro.ocmod.xml from /ocmods folder. Read ocstore.txt for more info.

3. Make sure that you have one or two new modifications in the modifications list: TLT Blog and TLT Blog SEO Url modification.

4. Refresh modifications cache and check log for errors.

5. Adjust access right for all new installed items (new modules, tltblog/tltblog and tltblog/tlttag).

Manual install

1. Upload all files from /upload folder to the root of your opencart installation. No files will be overwritten, if you install the extension first time.

2. Install tltblog.ocmod.xml from /ocmods folder via extension installer.

3. If you use default opencart's SEO-module you should install tltblog-seourl.ocmod.xml from /ocmods folder.

3.1 If you use Ocstore from myopencart.com you should install tltblog-seopro.ocmod.xml from /ocmods folder. Read ocstore.txt for more info.

4. Make sure that you have one or two new modifications in the modifications list: TLT Blog and TLT Blog SEO Url modification.

5. Refresh modifications cache and check log for possible errors.

6. Open phpMyAdmin or similar tool and execute SQL queries from install.sql. If you use table prefix differ to "oc_" you should replace it before run queries. In case of error please check, that you don't have tables 'oc_tltblog', 'oc_tltblog_description', 'oc_tltblog_related, 'oc_tltblog_to_layout', 'oc_tltblog_to_store', 'oc_tltblog_to_tag', 'oc_tlttag', 'oc_tlttag_description', 'oc_tlttag_to_store'. In this case you should delete it.

7. Adjust access right for all new installed items (new modules, tltblog/tltblog and tltblog/tlttag).

---------
Front-end
---------

To adjust view of the blogs on your site you can use following classes:

.tltblog h4
.tltblog

If you are using standard opencart template or template based on standard theme just add following to your
/catalog/view/theme/YOUR_THEME/stylesheet/stylesheet.css

/* TLT Blog */
.tltblog h4 {
	margin-top: 0;
	margin-bottom: 5px;
}

.tltblog {
	margin-bottom: 20px;
}

-----
SETUP
-----

1. First of all go to modules and install 'TLT Blog Settings', 'TLT Blog - Tags Module', 'TLT Blog - Articles Module'.

2. Modify parameters of blogs in 'TLT Blog Settings module'.

3. Enable 'TLT Blog - Tags Module'.

4. Create new 'TLT Blog - Articles Module' and add it to the layout (Design/Layouts).

5. You may also create a new layout for Blog articles and Tags

route tltblog/tlttag - shows articles for tag(s)

route tltblog/tltblog - shows a blog entry

6. If you want to use seo-url, enable TLT Blog SEO Url in TLT Blog Settings

-------
MODULES
-------

1. TLT Blog - Articles Module - shows list of blogs, linked to this tag.

2. TLT Blog - Tags Module - shows list of tags, which are active and have at least one active blog entry.

3. TLT Blog - Sitemap Module - shows the sitemap for blog entries and tags. You have to create a sitemap add it to the Sitemap layout. 

-----
Feeds
-----

1. TLT Blog - Sitemap - XML sitemap for Google. You should install and enable it. 
Data feed index.php?route=feed/tltblog_sitemap should be added to sitemap section of your robots.txt and to the sitemaps list in Google Webmaster.

----------------------
IMAGES IN BLOG ENTRIES
----------------------

You can add the images in WYSIWYG/html mode of the editor. Simple upload an image to the images catalog and insert it in the editor.

Images, which you can add as a blog setting, are used for blog listing. As default such images aren't shown in blog entries, but the path to the image is sent from the controller to the template. To show the image in a blog entry you should use this variable: $blog_image, which is full path to the image inclusive http/https prefix.

For example, if you wish to show the image before the text add this piece of code to catalog/view/theme/YOUR_TEMPLATE/template/tltblog/tltblog.tpl before the line 21 (<?php echo $description; ?>):

<?php if ($blog_image) { ?>
	<img src="<?php echo $blog_image; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" />
<?php } ?>

------
FOOTER
------

If you want to show blog entries in footer you can get the blog entries marked for footer using the method 

$this->model_catalog_information->getTltBlogsBottom() in controller footer.php

You can use this piece of code for catalog/controller/common/footer.php:

$this->load->model('tltblog/tltblog');
$this->load->model('setting/setting');

if ($this->config->has('tltblog_path')) {
	$tltpath = $this->config->get('tltblog_path');
} else {
	$tltpath = 'blogs';
}

$data['tltblogs'] = array();

foreach ($this->model_catalog_tltblog->getTltBlogsBottom() as $result) {
	$data['tltblogs'][] = array(
		'title' => $result['title'],
		'href'  => $this->url->link('tltblog/tltblog', 'tltpath='. $tltpath . '&tltblog_id=' . $result['tltblog_id'])
	);
}

And this code to catalog/view/theme/YOUR_THEME/template/common/footer.tpl:

<ul class="list-unstyled">
	<?php foreach ($tltblogs as $tltblog) { ?>
		<li><a href="<?php echo $tltblog['href']; ?>"><?php echo $tltblog['title']; ?></a></li>
	<?php } ?>
</ul>


-----------
SEO MODULES
-----------

In case you use any other seo-module you should open the seo controller (usually can be found in catalog/controller/seo***.php) and find something like "$this->request->get['route'] = 'error/not_found';" in the index method of the controller.

Simple change 'error/not_found' to 'tltblog/tltblog_seo' and enable TLT Blog SEO Url in TLT Blog Settings

If you use SEO Pro module you should change 'error/not_found' twice - in index method() (approx. line 138) and in validate() function (approx. line 397). You should also restore the '_route_' adding 

$this->request->get['_route_'] = $route;

before $this->request->get['route'] = 'error/not_found' (approx. line 138).

If SEO doesn't work properly please contact me.

TLT Blog checks if global opencart SEO is on (checking config_seo_url key in config). Some non-standard SEO-modules may not use this config key. In this case edit opencart_root/admin/controller/module/tltblog_settings.php

Find the construction (approx. line 180)

// If you have non-standard SEO module, which doesn't use config_seo_url setting simple replace this if ... else contruction with 
// $data['tltblog_global_seo_off'] = false;
// <--begin-->
if ($this->config->get('config_seo_url')) {
	$data['global_seo_off'] = false;
} else {
	$data['global_seo_off'] = true;
} 
// <---end--->

and replace it with $data['tltblog_global_seo_off'] = false;

-----
NOTES
-----

If you've installed extension and don't see TLT Blog items in dashboard's menu, try to logout/login into admin and flush the browser cache. If it doesn't help, check /system/storage/modification folder. There must be a new files in admin/{controller,language,view}/menu.php and tpl. If you don't see those files it means, that there are some problems with ocmod in your opencart installation. 

In this case you can replace original menu with new files. Just copy folder admin from ocmods folder into root of your opencart and refresh admin page.
