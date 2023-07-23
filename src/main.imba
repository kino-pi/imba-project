global css body
	ff:sans
	bg:cool3 c:cool9
	d:grid gtr:1fr jai:center

# my-component does not extend an element class
tag my-component
	css w:fit-content h:fit-content
		bg:cool9 c:cool1
		p:1rem 2rem
	<self>
		<slot>
# my-button *does* extend the button element class
tag my-button < button
	css w:fit-content h:fit-content
		bg:cool9 c:cool1
		p:1rem 2rem
	<self>
		<slot>

# my-component will be styled where as my-button will not, despite
# both components declaring the same css styles
imba.mount <div [d:vflex g:1rem]>
	<my-component> "Style"
	<my-button> "No style"