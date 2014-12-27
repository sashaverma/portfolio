class IndexViewModel
	constructor: () ->
    	@title = ko.observable("Sasha Verma")
    	@menuItems = ko.observableArray([])

    addMenuItem: (t, href) ->
    	@menuItems.push({ name: t, url: href })


$(document).ready ->
	ivm = new IndexViewModel()
	ivm.addMenuItem('About', '#about')
	ivm.addMenuItem('Portfolio', '#portfolio')
	ivm.addMenuItem('Resume', '#resume')
	ivm.addMenuItem('Contact', '#contact')
	ko.applyBindings ivm
