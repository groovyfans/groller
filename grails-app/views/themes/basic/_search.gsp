<form id="searchForm" method="get" action="/"
	style="margin: 0; padding: 0" onsubmit="return validateSearch(this)">
	<p>
	  <input type="text" id="q" name="q" size="10" class="text small"
		  maxlength="255" value="" />
				<input type="submit" value="Search"  id="searchbutton"/>
	</p>
</form>
<script type="text/javascript">
	function validateSearch(form) {
		if (form.q.value == "") {
			alert("Please enter a search term to continue.");
			form.q.focus();
			return false;
		}
		return true;
	}
</script>