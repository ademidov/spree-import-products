Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "product_imports_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%=tab(:product_imports,  :route => 'admin_product_imports' )%>",
                     :disabled => false)