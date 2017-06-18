What is jQuery?
-designed to simplify the client-side scripting of
HTML
- jQuery’s motto is “Write less, do more.”
- most popular and widely used JavaScript library
- some other libraries: Angular JS, React, Backbwon, Ember JS

Start with
$(document).ready(function(){
	
});

Basic Selectors
- like CSS selectors
- select anything to manipulate

$('p.lead').css('border', '4px solid red')
-select paragraph with the class of lead, change border
- better practice to just update CSS

$('p') 
- select all paragraphs

$('body p.lead')
- using parent and child

$('#lesson-1')
- select with lesson-1 id

$('*')
- select all

Basic Animations
$('.box:first').hide(500);
- select box and filter for the first one and hide for 500 ms

.delay(time)
.show(time)
.slideUP(time)
.slideDown(time)
.fadeOut(time) - more opacity

.animate({CSS selector/attribute: 'value'}, time);
.animate({height: '200px'}, 300)
.animate({bottom: '200px'}, 300) - move up 
.animate({bottom: '200px', left: '200px'}, 800)

Index Filters
$('p:first').css('border', '4px solid red');
- first paragraph
$('p:gt(2)').css('border', '4px solid red');
- paragraphs greater than 2
$('p:lt(2)').css('border', '4px solid red');
- paragraphs less than 2
$('p:eq(2)').css('border', '4px solid red');
- paragraphs equal to 2
- indexed at 0

Relationship Filters
- relation of DOM elements

$('h2: has(span)').css('border', '4px solid red');
- select all h2s with span
- child of span

$('.box:parent').css('border', '4px solid red');
- select all boxes with children

Attribute Filters
$('p[name="name_of_class"]').css('border', '4px solid red');

$('p[name^="sho"]').css('border', '4px solid red');
- to target all names with "sho" (can be shorty, showman, etc)

$('a[href$=".co.uk"]').css('border', '4px solid red');
- to target all links with UK ending

Attribute Method
- anything is inside HTML can be set or retrieve

alert($('p:first').attr('class'));
- alert will pop up with the class of the first paragraph

to set the class
$('p:first').attr('class', 'not-lead');
- change the class to not lead

$('img').attr('src', 'img2.jpg');
- change image to img2.jpg

$('img').delay(400).fadeOut(500, function(){
	$(this).attr('src', 'img2.jpg').fadeIn(500);
}
- way to swap out images by changing the src

Class Methods
$('p:last').hasClass('lead');
- does last paragraphy have class of lead, boolean

$('p:first').addClass('blue').removeClass('lead');

$('p').toggleClass('blue').removeClass('lead');
- good for drop down menus

Content Methods
- look at content of things, ie what is inside p tag

$('p:first').text('Hey you guyyyysss!');
- change the text of the first paragraph

- can pull text out of element and save as variable

$('p:first').html('Hey <em>you</em> guyyyysss!');
- if you want to make changes with html language, use html method

$('input').val();
- storing user input

$('input').val('yo dude!');
- or setting input

DOM Traversal

$('h2').children().css('border', '4px solid red');
- target all children of h2

$('h2').parents().css('border', '4px solid red');
- target all parents of h2

$('h2').parents('section').css('border', '4px solid red');
- only section wrapped around h2 will be targetted

$('h2').siblings('p:first').css('border', '4px solid red');
- target all siblings but limit to first p (can also leave blank to target all)

$('h2').siblings('p').last().css('border', '4px solid red');
- another way of writing 133

Event Binding
$('h2').bind('click', function(){
	$(this).toggleClass('blue');
});
- when you click h2, it will toggle back and forth
- slide out menus, tabs

.hover
.keypress

