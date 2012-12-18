<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Ribbon Test</title>
	<link href="../../../css/ribbon.css" rel="stylesheet" type="text/css" />
	<link href="../../../css/soft_button.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
	<script type="text/javascript" src="../../../js/ribbon.js"></script>
	<script type="text/javascript" src="../../../js/jquery.tooltip.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#ribbon').ribbon();
			
			$('#enable-btn').click(function() {
				$('#del-table-btn').enable();
				$('#del-page-btn').enable();
				$('#save-btn').enable();
				$('#other-btn-2').enable();
				
				$('#enable-btn').hide();
				$('#disable-btn').show();	
			});
			$('#disable-btn').click(function() {
				$('#del-table-btn').disable();
				$('#del-page-btn').disable();
				$('#save-btn').disable();
				$('#other-btn-2').disable();
				
				$('#disable-btn').hide();
				$('#enable-btn').show();	
			});
		});
	</script>

</head>
<body bgcolor="#c9cdd2">
	<div id="ribbon">
		<span class="ribbon-window-title">PANEL ADMINISTRATIVO</span>
		<div class="ribbon-tab file" id="file-tab">
			<span class="ribbon-title">File</span>
			<div class="ribbon-backstage">
				This is the Backstage.<br/><br/>
							
				<div class="button big">
					<img src="icons/normal/open-page.png" alt="Open" />
					<span class="label">Open</span>
					<span class="desc">Open a document from your computer</span>
				</div><br/>
				<div class="button big">
					<img src="icons/normal/save-page.png" alt="Save" />
					<span class="label">Save</span>
					<span class="desc">Save your document to your computer</span>
				</div>
			</div>
		</div>

		<div class="ribbon-tab" id="format-tab">
			<span class="ribbon-title">Pagos</span>
			<div class="ribbon-section">
				<span class="section-title">Registros</span>
				<div class="ribbon-button ribbon-button-large" id="add-table-btn" onclick="location.href='http://kronos.mcanime.net';">
					<span class="button-title">Add<br/>Table</span>
					<span class="button-help">This button will add a table to your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/new-table.png" />
				</div>
				<div class="ribbon-button ribbon-button-large" id="open-table-btn">
					<span class="button-title">Open<br/>Table</span>
					<span class="button-help">This button will open a table and add it to your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/open-table.png" />
					
				</div>
				<div class="ribbon-button ribbon-button-large disabled" id="del-table-btn">
					<span class="button-title">Remove<br/>Table</span>
					<span class="button-help">This button will remove the selected table from your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/delete-table.png" />
					
				</div>
			</div>
			
			<div class="ribbon-section">
				<span class="section-title">Pages</span>
				<div class="ribbon-button ribbon-button-large" id="add-page-btn">
					<span class="button-title">Add<br/>Page</span>
					<span class="button-help">This button will add a page to your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/new-page.png" />
					
				</div>
				<div class="ribbon-button ribbon-button-large" id="open-page-btn">
					<span class="button-title">Open<br/>Page</span>
					<span class="button-help">This button will open a page and add it to your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/open-page.png" />
					
				</div>
				<div class="ribbon-button ribbon-button-large disabled" id="del-page-btn">
					<span class="button-title">Remove<br/>Page</span>
					<span class="button-help">This button will remove the selected page from your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/delete-page.png" />
					
				</div>
			</div>
			
			
			<div class="ribbon-section">
				<span class="section-title">Actions</span>
				<div class="ribbon-button ribbon-button-small" id="run-btn">
					<span class="button-title">Run</span>
					<span class="button-help">This button will run the program.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/run.png" />
					
				</div>
				<div class="ribbon-button ribbon-button-small" id="repeat-btn">
					<span class="button-title">Repeat</span>
					<span class="button-help">This button will repeat something.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/repeat.png" />
					
				</div>
				<div class="ribbon-button ribbon-button-small disabled" id="save-btn">
					<span class="button-title">Save</span>
					<span class="button-help">This button will save your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/save.png" />
				
				</div>
			</div>

		</div>
		<div class="ribbon-tab" id="next-tab">
			<span class="ribbon-title">Options</span>
			<div class="ribbon-section">
				<span class="section-title">More Stuff</span>
				<div class="ribbon-button ribbon-button-large">
					<span class="button-title">Other<br/>Feature</span>
					<span class="button-help">This button will do something else.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/bullet-orange.png" />
				</div>
				<div class="ribbon-button ribbon-button-large disabled" id="other-btn-2">
					<span class="button-title">Remove<br/>Table</span>
					<span class="button-help">This button will remove the selected table from your document.</span>
					<img class="ribbon-icon ribbon-normal" src="icons/normal/delete-table.png" />
				</div>
			</div>
		</div>
	</div>
	<div class="page"></div>
</body>
</html>
