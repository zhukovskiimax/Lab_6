lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-06.glade')

ui = bld.objects

function ui.btn_new:on_clicked(...)
  ui.wnd2:show_all()
end

function ui.btn_hide:on_clicked(...)
  ui.wnd2:hide()
  end

ui.wnd.title = 'lab-06'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main()
  