/*-------------------------------------------------------------
Base styles
--------------------------------------------------------------*/

body {
    background: white;
    font-family:"Lucida Grande", lucida, Geneva, Arial, sans-serif;
    font-size: 0.9em;
}
.img {
    border: 0px;
    margin: 0px; 
}

/* entries ----------------------------------------------- */

.entryTitle {
    font-weight: bold;
    font-size: 130%;
}
.entryInfo {
    font-size: 80%;
    color: #999;
}
div.dayTitle {
    font-size: 120%;
    font-weight:bold;	
    padding: .5em 0 0 0;
}
div.next-previous {
    font-size: 80%;
    text-align: center;
    padding: .5em 0 .5em 0;

}

/* category chooser ----------------------------------------------- */

.category-chooser {
    margin: -50%;
    width:100%;
}
.rCategory li {
    font-size: 80%;
    display: inline;
    list-style-type: none;
    padding-right: 0px;
}

li.selected {
    font-weight: bold;
}

/* other lists ----------------------------------------------- */

ul.rNavigationBar, ul.rMenu, ul.rFolder, ul.rFeeds, ul.rReferersList, ul.rEntriesList {
    list-style-type: none;
    padding: 0;
    margin: 0;
    font-size: 80%;
}
ul.rFeeds li {
    background-image: url(images/feed-icon-12x12.gif);
    background-repeat: no-repeat;
    background-position: 0 .2em; 
    padding-left: 1.4em;
    line-height: 1.5em;
}

/* calendar ----------------------------------------------- */

.hCalendarDay{
    text-align : center;
    font-size: small;
}
th.hCalendarDayNameRow {
    text-align : center;
    font-size : small;
    font-weight : bold;
}
td.hCalendarDayCurrent {
    text-align : center;
    font-size  : small;
    font-weight: bold;
}
td.hCalendarDayLinked {
    text-align : center;
    font-size  : small;
    font-weight: bold;
}

/* comments ----------------------------------------------- */

p.comment-details {
    font-size: 80%;
    color: #999;
}
.comments-syntax-indicator {
    font-weight: bold;
}
.comments-syntax-indicator span.enabled {
    background: transparent;
    color: green;
    font-style: italic;
}
.comments-syntax-indicator span.disabled {
    background: transparent;
    color: red;
    font-style: italic;
}

form ul{ position: relative; list-style: none; width: 100%; }
form li{ line-height: 2em; margin: 0; padding: 1px 1px 6px 9px; }
form li.focused{ background-color: #fff7c0 !important; }
form li p{ font-size: 9px; line-height: 13px; color: #444; }
form li{ display: inline-block; }
form[id] li{ display: block; }
form li div{ display: inline-block; }
form[id] li div{ display: inline; }
form .left{ float: left !important; margin: 0; }
form .right{ float: right !important; margin: 0; }
form .clear{ clear: both; } 
form li div p{ margin: 0 0 5px 0; }
form div.left{ margin-right: 2px !important; }
form div.left[class]{ margin-right: 4px !important; }
form div.left img{ margin: 0 0 -2px 0; }
form h2{ font-size: 1.8em; clear: left; } 
form .info{ display: inline-block; margin: 0 0 10px 0; padding: 0 0 4px 0; border-bottom: 1px dotted #ccc !important;}
form .info[class]{ display: block; }
form .info p{ font-size: 1em; line-height: 1.3em; margin: 0 0 8px 0; }
textarea.textarea{margin-bottom: 1px;}
textarea.textarea[class]{font-family: "Lucida Grande", Tahoma, "Trebuchet MS", Verdana, sans-serif;}
select.select{ padding: 1px 0 0 0; margin: 1px 0 3px 0; }
select.select[class]{ margin: 0; padding: 1px 0 1px 0; }
form .small{ width: 70px; }
form .medium{ width: 170px; }
form .large, form textarea.textarea{ width: 340px; }
form .tags{ width: 320px; }
form textarea.small{ height: 5.5em; }
form textarea.medium{ height: 10em; }
form textarea.large{ height: 20em; }
.choices input{ width: 200px; margin-right: 3px; }
.choices ol{ margin: 10px 0 0 0; }
.choices[class] ol{ margin: 0 !important; }
.choices img{ margin: 0 0 1px 0; }
fieldset ol li{ display: list-item !important; margin: 0 5px 2px 3px !important; padding: 0 !important; list-style: inside decimal; }
input.button, button { width: 6em; padding: 2px 2px 0 0; /* fix for IE */ }
/* revert to normal for Firefox */
li>input.button, li>button, input.button>input.button, button>button { padding: 2px; }
label.desc{
    margin: 4px 0 3px 0;
    border: 0;
    color: #444;
    font-size: 1em;
    line-height: 1.3em;
    display: block;
    font-weight: bold;
}
input.text, input.number, input.url, input.email, input.password, input.file, 
textarea.textarea, select.select{
    font-size: 1.2em;
    border-top: 1px solid #7c7c7c;
    border-left: 1px solid #c3c3c3;
    border-right: 1px solid #c3c3c3;
    border-bottom: 1px solid #ddd;
    color: #333;
}
input.text, input.number, input.url, input.email, input.password, input.file{ padding: 2px; }
input.currency{ text-align: right; }
input.checkbox, input.radio{
    display: block;
    line-height: 1.4em;
    margin: 8px 0 0 3px;
    width: 13px;
    height: 13px;
}
input.focus, textarea.focus { background: #ffd; color: #000; }
label.choice{
    display: block;
    line-height: 1.4em;
    margin: -19px 0 0 25px;
    padding: 4px 0 5px 0;
    color: #444;
    width: 80%;
}
