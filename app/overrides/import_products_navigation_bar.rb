Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "products_import_navigation_bar",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:product_imports, :url => admin_product_imports_path) %>",
                     :disabled => false)
