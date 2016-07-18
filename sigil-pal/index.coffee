
class MainView
	constructor: (@el) ->
	
	render: ->
		template = ->
			"""
			<div class='blended_grid'>
			
				<div class='pageHeader'>
					<h1>Sigil Pal</h1>
					<h3>automated Statement of intent processor</h3>
				</div>
				
				<div class='pageLeftMenu'>
					<textarea type='text' id='soi' placeholder='type your intent here'></textarea>
					<br />
					<button id='process'>Process Statement of Intent</button>
				</div>
				
				<div class='pageContent'>
					<div id='result'></div>
					<br />
					<p>To find more info on the process of</p>
					<p>sigilization and magick in general</p>
					<p>go <a href='http://www.excommunicate.com/basics-in-sigil-creation-or-the-only-magic-guaranteed-to-work/#axzz4Ej3q2KlR'>here</a> or <a href='http://www.chaosmatrix.org/library/chaos_all.php'>here</a> for more detailed information.</p>
				</div> 
				<div class='pageFooter'>
					<h4><a href='https://github.com/theblacksquid'>@theblacksquid</a> 2016</h4>
				</div>
			</div>
			"""
		$(@el).append template()
		@resultView()
	
	resultView: ->
		template = (input) ->
			"""
			<div>
				<h3>#{$('#soi').val()}</h3>
				<p>Base Letters: #{input.BaseChars}</p>
				<p>Numeric Value: #{input.NumVal}</p>
				<p>Seed Number: #{input.SeedNum}</p>
			</div>
			"""
		$("#process").click(->
			text = $("#soi").val()
			$("#result").html template(digest text)
		)
		

myView = new MainView("#app")
myView.render()










