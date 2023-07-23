global css body
	ff:sans
	bg:cool3 c:cool9
	d:grid gtr:1fr jai:center

tag my-component
	css w:fit-content h:fit-content
		bg:cool9 c:cool1
		p:1rem 2rem
	<self>
		<slot>

tag my-button < button
	css w:fit-content h:fit-content
		bg:cool9 c:cool1
		p:1rem 2rem
	<self>
		<slot>

tag my-div < div
	css w:fit-content h:fit-content
		bg:cool9 c:cool1
		p:1rem 2rem
	<self>
		<slot>

# Adding a class ta self causes the component to render correctly
tag my-div-with-class < div
	css w:fit-content h:fit-content
		bg:cool9 c:cool1
		p:1rem 2rem
	<self.anything>
		<slot>

# my-component will be styled where as my-button, and my-div will not
imba.mount <div [d:vflex g:1rem]>
	<my-component> "Imba"
	<my-button> "Imba"
	<my-div> "Imba"
