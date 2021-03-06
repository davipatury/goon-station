�    ��q��ҋW    k   davipatury.txt general
	key = "Davipatury"
	ckey = "davipatury"
	gender = "male"
	joined = "2015-01-18"
	online = 1
�   �  snackcake @���ۡ(�B 6   h�ۯ�̋W    $    DDMI   �  snackcake @���3� �B 6   �d���̋W    $    DDMI   �  snackcake @���T  �B 6   v�ϟ�̋W    $    DDMI   �  snackcake @����� �B 4   3\O��̋W    "    DDMI   )	  wanted-unknown @���3   �B��̋W    !    DDMI   T	  precursor-2fx @���6   xL�͋W    $    DDMI   �   seeds-ovl @���   �B 6   r}�͋W    $    DDMI   �   seeds-ovl @�������B B%   ���q4͋W    "%  pathoComp.html <!DOCTYPE html> <html> <head> <title>Pathogen Manipulator</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <script src=http://cdn.goonhub.com/js/jquery.min.js type=text/javascript></script><!--<script src="./json2.min.js" type="text/javascript"></script>--> <script src=http://cdn.goonhub.com/js/pathology_display.js type=text/javascript></script> <script src=http://cdn.goonhub.com/js/pathoui-script.js type=text/javascript></script> <link href=http://cdn.goonhub.com/css/pathoui.css rel=stylesheet type=text/css> </head> <body> <div class=mainContent><!--Displays information about the currently loaded pathogen--> <div id=loadedPathogen> <div class=noborder> <span class=label>DNA Load Status: </span> <div class="annunciator a-green" id=annDNALoad> LOAD </div> <div class="annunciator a-red" id=annDNANoLoad> NO LOAD </div> <div class="annunciator a-yellow" id=annDNASplice> SPLICE </div> <span class=label>Pathogen: </span> <div class="text-field tf-med" id=txtPName>G68P68</div> <div class="text-field tf-med" id=txtPType>(fungus)</div> </div> <div class=noborder> <span class=label>Slot: </span> <div class="text-field tf-narrow" id=txtExpSlot>1</div> <div class="annunciator a-yellow" id=annSlotExp>EXPOSED</div> <div class="annunciator a-green" id=annSlotSample>SAMPLE</div> <div class="button btn-small" id=btnCloseSlot>Close</div> <div class="button btn-small" id=btnEjectSample>Eject</div> </div> <div class=noborder> <span class=label>DNA Seq: </span><br> <div class="text-field tf-long" id=txtPSeq> </div> </div> </div><!--Displays the currently selected page--> <div class=dataDisplay> <div class=dataPage id=dpManip> <h1>DNA Manipulator</h1> <div id=manipHolder> <div class="narrow-border extrapad"> <span class="label lb-long">Status:</span> <div class="annunciator a-green" id=aMutRdy>READY</div> <div class="annunciator a-yellow" id=aMutIrr>RAD</div> <div class="annunciator a-green" id=aMutAck>PASS</div> <span class="label lb-long"></span> <div class="annunciator a-red" id=aMutOpen>EXPOSED</div> <div class="annunciator a-red" id=aMutSample>SAMPLE</div> <div class="annunciator a-red" id=aMutNack>FAIL</div> </div> <table> <tr> <td><span class="label lb-long">Mutativeness:</span></td> <td><div class="button btn-tiny" data-tsk="mut=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMut></div></td> <td><div class="button btn-tiny" data-tsk="mut=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Mutation Speed:</span></td> <td><div class="button btn-tiny" data-tsk="mts=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMts></div></td> <td><div class="button btn-tiny" data-tsk="mts=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Advance Speed:</span></td> <td><div class="button btn-tiny" data-tsk="adv=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtAdv></div></td> <td><div class="button btn-tiny" data-tsk="adv=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Maliciousness:</span></td> <td><div class="button btn-tiny" data-tsk="mal=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMal></div></td> <td><div class="button btn-tiny" data-tsk="mal=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Suppression Threshold:</span></td> <td><div class="button btn-tiny" data-tsk="sth=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtSth></div></td> <td><div class="button btn-tiny" data-tsk="sth=1">+</div></td> </tr> </table> </div> </div> <div class=dataPage id=dpSplice1> <h1>Select splice target</h1> <span class="label lb-slong">The loaded DNA will be modified during this session.</span> <div class="noborder splice-selection"> <div class="noborder slot-holder" id=spliceSlots> </div> <div class="narrow-border button-holder" id=spliceButtons> <div class="annunciator a-red" id=annSpliceStatExp>EXPOSED</div> <div class="annunciator a-green" id=annSpliceStatSource>SOURCE</div> <div class="annunciator a-green" id=annSpliceStatTarget>TARGET</div> <hr> <div class=button id=btnSpliceBegin>Begin<br>Splice</div> <div class=button id=btnSpliceCancel>Cancel<br>Splice</div> </div> </div> </div> <div class=dataPage id=dpSplice2> <h1>Splicing Session</h1> <div class="noborder splice-selection"><!--DATA HOLDER--> <div class=noborder id=spliceData> <div class="extrapad button-holder prediction-holder"> <span class="label lb-long">Predictive Effectiveness:</span> <div class="text-field tf-med txtPredEffect"></div> <div class="button btn-med display-known">Sequences</div> </div> <div class="extrapad splice-sequence" id=spliceTargetField> <span class="label lb-long">Target sequence:</span> <div class="text-field tf-long" id=txtSpliceTarget></div> <div class="button btn-small btn-seq-off" dir=-1>-</div> <div class="button btn-small btn-seq-off" dir=1>+</div> <span class=label>Status:</span> <div class="annunciator a-red" id=annSpliceTargetEmpty>EMPTY</div> </div> <div class="button-holder extrapad splice-controls" id=spliceActions> <span class="label lb-elong">Splice actions:</span> <div class="button btn-small" dir=-1>Before</div> <div class="button btn-small" dir=1>After</div> <div class="button btn-small" dir=0>Remove</div> </div> <div class="extrapad splice-sequence" id=spliceSourceField> <span class="label lb-long">Source sequence:</span> <div class="text-field tf-long" id=txtSpliceSource></div> <div class="button btn-small btn-seq-off" dir=-1>-</div> <div class="button btn-small btn-seq-off" dir=1>+</div> <span class=label>Status:</span> <div class="annunciator a-red" id=annSpliceSourceEmpty>EMPTY</div> </div> </div><!--FINALIZING BUTTONS--> <div class="button-holder extrapad" id=spliceFinalButtons> <span class="label lb-med">Splice status:</span> <div class="annunciator a-green" id=annSpliceSuccess>SUCCESS</div> <div class="annunciator a-red" id=annSpliceFail>FAIL</div> <span class=label>Prediction:</span> <div class="annunciator a-green" id=annPredSuccess>SUCCESS</div> <div class="annunciator a-yellow" id=annPredUnk>UNKNOWN</div> <div class="annunciator a-red" id=annPredFail>FAIL</div> <hr> <div class=button id=btnSpliceFinish>Finish Splicing</div> </div> </div> </div> <div class=dataPage id=dpTester> <h1>DNA Stability Analyzer</h1> <div class=noborder id=analyzerHolder><!--SHOWING PREDICTIVE EFFECTIVENESS--> <div class="narrow-border extrapad button-holder" id=predictionHolder> <span class="label lb-long">Predictive Effectiveness:</span> <div class="text-field tf-med txtPredEffect"></div> <div class="button btn-med display-known">Sequences</div> </div><!--HOLDING BOTH ANALYSIS BUFFERS (current / previous) --> <div class="noborder extramargin"> <div class="narrow-border analysis-buffer extrapad" id=currAnalysis> <span class="label lb-long block">Current analysis:</span> <div class="text-field tf-enarrow" id=currAnalysis0></div> <div class="text-field tf-enarrow" id=currAnalysis1></div> <div class="text-field tf-enarrow" id=currAnalysis2></div> <div class="text-field tf-enarrow" id=currAnalysis3></div> <div class="text-field tf-enarrow" id=currAnalysis4></div> <div class="button btn-tinyish" id=btnClrAnalysisCurr>CLR</div> </div> <div class="narrow-border analysis-buffer extrapad" id=prevAnalysis> <span class="label lb-long block">Previous analysis:</span> <div class="text-field tf-enarrow" id=prevAnalysis0></div> <div class="text-field tf-enarrow" id=prevAnalysis1></div> <div class="text-field tf-enarrow" id=prevAnalysis2></div> <div class="text-field tf-enarrow" id=prevAnalysis3></div> <div class="text-field tf-enarrow" id=prevAnalysis4></div> </div> </div> <div class="noborder extramargin"> <div class="extrapad button-holder" id=analyzeComponents> </div> <div class="narrow-border extrapad" id=analyzeResults> <span class=label>Stable:</span> <div class="annunciator a-green" id=annStableYes>YES</div> <div class="annunciator a-red" id=annStableNo>NO</div> <span class=label>Transient:</span> <div class="annunciator a-green" id=annTransYes>YES</div> <div class="annunciator a-red" id=annTransNo>NO</div> <hr> <span class=label>Error:</span> <div class="annunciator a-red" id=annErrBuffer>BUFFER</div> <div class="annunciator a-red" id=annErrNack>NACK</div> <span class=label></span> <div class="annunciator a-yellow" id=annErrSample>SAMPLE</div> <div class="annunciator a-yellow" id=annErrData>T. DATA</div> </div> </div> <div class="button btn-long" id=btnAnalysisLoad>Load Sample &amp; Clear Buffer</div> <div class="button btn-long" id=btnAnalysisDoTest>Test DNA</div> </div> </div> <div class=dataPage id=dpLoadSave> <h1>Load / Save DNA</h1> <div class="noborder slot-holder" id=dnaSlotHolder> </div> </div> <div class=dataPage id=dpWelcome> <h1>Welcome to the Path-o-matic 2000</h1> <span>The leading market solution for pathology research.</span> <span>This device is capable of the following:</span> <ul> <li>DNA Sequence Verification</li> <li>DNA Sequence Splicing</li> <li>DNA Trait Segment Manipulation</li> <li>Predictive Stability Analysis</li> <li>Pathogen Sample Identification</li> </ul> </div> </div><!--The main menu, used for scrolling through the pages--> <div id=mainMenu> <div class=button id=btnRetMain>Main Screen</div> <div class=button id=btnManip>Manipulate</div> <div class=button id=btnSplice>Splice</div> <div class=button id=btnTester>DNA Analyzer</div> <div class=button id=btnLoadSave>Load / Save DNA</div> <div class="annunciator a-yellow" id=annSynch>SYNCH</div> </div> </div> </body> </html>-   6�խ4͋W    	  create_object.html <!DOCTYPE html> <html> <head> <title>Create Object</title> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/style.css> </head> <body id=createobj> <form name=spawner action="byond://?src=/* ref src */" method=get> <input type=hidden name=src value="/* ref src */"> <input type=hidden name=action value=object_list> Type <input type=text name=filter style=width:280px onkeydown=submitFirst(event)><input type=button name=search value=Search onclick=updateSearch() style=width:70px><br> Offset: <input type=text name=offset value=x,y,z style=width:250px> A <input type=radio name=offset_type value=absolute> R <input type=radio name=offset_type value=relative checked><br> Direction: S<input type=radio name=one_direction value=2 checked> SE<input type=radio name=one_direction value=6> E<input type=radio name=one_direction value=4> NE<input type=radio name=one_direction value=5> N<input type=radio name=one_direction value=1> NW<input type=radio name=one_direction value=9> W<input type=radio name=one_direction value=8> SW<input type=radio name=one_direction value=10><br> Number: <input type=text name=object_count value=1 style=width:330px> <br><br> <div id=selector_hs> <select name=type id=object_list multiple size=20> </select> </div> <br> <input type=submit value=spawn> </form> <script language=JavaScript>var old_search = "";
		var object_list = document.spawner.object_list;
		var object_list_container = document.getElementById('selector_hs');
		var object_paths = null /* object types */;
		var objects = object_paths == null ? new Array() : object_paths.split(";");
		
		document.spawner.filter.focus();
		populateList(objects);
		
		function populateList(from_list)
		{
			var newOpts = '';
			var i;
			for (i in from_list)
			{
				newOpts += '<option value="' + from_list[i] + '">'
					+ from_list[i] + '</option>';
			}
			object_list_container.innerHTML = '<select name="type" id="object_list" multiple size="20">' + 
			newOpts + '</select>';
		}
		
		function updateSearch()
		{
			if (old_search == document.spawner.filter.value)
			{
				return false;
			}
			
			old_search = document.spawner.filter.value;
			
			
			var filtered = new Array();
			var i;
			for (i in objects)
			{
				if(objects[i].search(old_search) < 0)
				{
					continue;
				}
				
				filtered.push(objects[i]);
			}
			
			populateList(filtered);
			
			if (object_list.options.length)
				object_list.options[0].selected = 'true';
			
			return true;
		}
		
		function submitFirst(event)
		{
			if (event.keyCode == 13 || event.which == 13)
			{
				if (updateSearch())
				{
					if (event.stopPropagation) event.stopPropagation();
					else event.cancelBubble = true;

					if (event.preventDefault) event.preventDefault();
					else event.returnValue = false;
				}
			}
		}</script> </body> </html>�   ߟ9�4͋W    o    DDMIg   d  �  eyebot-logout @   BJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B'   ��YJ͋W        DDMI   �  ����B �   �#Kn͋W    �    DDMI�   X   body_m @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B3   J�n͋W    !    DDMI   �  ice100 @���=98�B 3   Me��n͋W    !    DDMI   �  ice100 @���ȹ��B 3   ����n͋W    !    DDMI   �  ice100 @�������B 3   ƴ��n͋W    !    DDMI   �  ice100 @�������B 3   ���xn͋W    !    DDMI   �  ice100 @����  �B 3   
�2�n͋W    !    DDMI   �  ice100 @���S-0�B 3   u���n͋W    !    DDMI   �  ice100 @��� ���B 3   ��R�n͋W    !    DDMI   �  ice100 @�����,�B 3   x�n͋W    !    DDMI   �  ice100 @���


�B 3   L��Cn͋W    !    DDMI   �  ice100 @���'�B 3   ��jn͋W    !    DDMI   �  ice100 @�������B 1   gx�p͋W        DDMI   �  butt @���   �B �   wD�p͋W    �    DDMI}   		  head @���   �B Y   eyes @����BBY   short @����BBY   tramp @����BBY   none @����BBM   (��Fp͋W    ;    DDMI3   �  chest_m @���   �B �  chest_blood @���B3   x�a�͋W    !    DDMI   T	  precursor-5fx @����   O9⩊͋W    �    DDMI|   		  head @���   �B Y   eyes @����BBY   short @����BBY   none @����BBY   none @����BB�   �H���͋W    �    DDMI{   		  head @���   �B Y   eyes @����BBY   pomp @�����F�BBY   none @����BBY   none @����BB�   ӭ?�͋W    �    DDMI�   X   body_f @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B,   2�^�͋W        DDMI   		  monkey @���;   �2;�͋W    )    DDMI!   d  �  eyebot-logout @   B3   A�Ҍ͋W    !    DDMI   d  N   blank @   B*    ǡp�͋W       parser.html Go away nerd.J    .���͋W    3   .html {"error":"You don't have access to this resource."}(   �%q��͋W    
  tooltip.html <!DOCTYPE html> <html> <head> <title>Tooltip</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/tooltip.css> </head> <body> <div id=wrap class=wrap> <div id=content class=content></div> </div> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/tooltip.js></script> </body> </html>�   �?E9�͋W    �  browserOutput.html <!DOCTYPE html> <html> <head> <title>Chat</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/font-awesome.css> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/browserOutput.css> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/json2.min.js></script> </head> <body> <div id=loading> <i class="icon-spinner icon-2x"></i> <div> Loading...<br><br> If this takes longer than 30 seconds, it will automatically reload a maximum of 5 times.<br> If it STILL doesn't work, please post a report here: <a href="http://forum.ss13.co/viewforum.php?f=7">http://forum.ss13.co/viewforum.php?f=7</a> </div> </div> <div id=messages> </div> <div id=userBar style="display: none"> <div id=ping> <i class=icon-circle id=pingDot></i> <span class=ms id=pingMs>--ms</span> </div> <div id=options> <a href=# class=toggle id=toggleOptions title=Options><i class=icon-cog></i></a> <div class=sub id=subOptions> <a href=# class=decreaseFont id=decreaseFont><span>Decrease font size</span> <i class=icon-font>-</i></a> <a href=# class=increaseFont id=increaseFont><span>Increase font size</span> <i class=icon-font>+</i></a> <a href=# class=chooseFont id=chooseFont>Change font <i class=icon-font></i></a> <a href=# class=togglePing id=togglePing><span>Toggle ping display</span> <i class=icon-circle></i></a> <a href=# class=highlightTerm id=highlightTerm><span>Highlight string</span> <i class=icon-tag></i></a> <a href=# class=saveLog id=saveLog><span>Save chat log</span> <i class=icon-save></i></a> <a href=# class=clearMessages id=clearMessages><span>Clear all messages</span> <i class=icon-eraser></i></a> </div> </div> </div> <script type=text/javascript src=http://cdn.goonhub.com/js/browserOutput.js></script> </body> </html>�    ����͋W    �    DDMI�   X   body_m @���   �B Y   eyes @����BY   short @����BBY   none @����BBY   none @����BBw   none @�������BBB-   �R�#�͋W        DDMI   n   preview @���   ?��m�͋W    �  adminOutput.html <div id=contextMenu class=contextMenu style="display: none"> <a href=# id=ctx_pm>Admin PM</a> <a href=# id=ctx_smsg>Subtle Msg</a> <a href=# id=ctx_jump>Jump To</a> <a href=# id=ctx_get>Get</a> <a href=# id=ctx_boot>Boot</a> <a href=# id=ctx_ban>Ban</a> <a href=# id=ctx_gib>Gib</a> <a href=# id=ctx_popt>Player Options</a> </div> <script type=text/javascript>/* DO NOT USE LINE COMMENTS (//) IN THIS FILE FOR THE LOVE OF GOD */

opts.menuTypes = { /* Action flags for context menu */
	1:  'pm',
	2:  'smsg',
	4:  'boot',
	8:  'ban',
	16: 'gib',
	32: 'popt',
	64: 'jump',
	128:'get',
};
opts.contextMenuTarget = null; /* Contains the player mind ref */
opts.showMessagesFilters = { /* Contains the current filters. "show: false" filters it out. "match" is all the css classes to filter on. */
	'All': {show: true},
	'Admin': {show: true, match: ['admin']},
	'Combat': {show: true, match: ['combat']},
	'Radios': {show: true, match: ['radio']},
	'Speech': {show: true, match: ['say']},
	'OOC': {show: true, match: ['ooc']},
	'Misc': {show: true},
};
opts.filterHideAll = false;

$contextMenu = $('#contextMenu');
$subOptions.append('<a href="#" class="filterMessagesOpt" id="filterMessagesOpt"><span>Filter Messages</span> <i class="icon-filter"></i></a>');

function openContextMenu(flags, target, x, y) {
	for (var i in opts.menuTypes) {
		$('#ctx_' + opts.menuTypes[i])[(flags & i) === 0 ? 'hide' : 'show']();
	}
	
	$contextMenu.hide(0, function() {
		if (($contextMenu.height() + y) > ($(window).height() - 16)) {
			y -= $contextMenu.height() + 4;
		}
		$contextMenu.css({top: y + 2, left: x + 2});
		$contextMenu.slideDown(200);
	});

	opts.contextMenuTarget = target;
}

function hideContextMenu() {
	$contextMenu.slideUp(200);
	opts.contextMenuTarget = null;
}

function toggleFilter(type) {
	if (type == 'All') {
		if (opts.showMessagesFilters['All'].show === true) {
			$.each(opts.showMessagesFilters, function(key) {
				opts.showMessagesFilters[key].show = false;
				if (key != 'All') {
					$('#filter_'+key).prop('checked', false);
				}
			});
			$('#messages .entry *:nth-child(1):not(.internal)').parent('.entry').addClass('hidden').attr('data-filter', 'All');
			opts.filterHideAll = true;
			output('<span class="internal boldnshit">Hiding <strong>ALL</strong> messages. Uhhh are you sure about this?</span>');
		} else {
			$.each(opts.showMessagesFilters, function(key) {
				opts.showMessagesFilters[key].show = true;
				if (key != 'All') {
					$('#filter_'+key).prop('checked', true);
				}
			});
			$('#messages .entry.hidden[data-filter]').removeClass('hidden');
			opts.filterHideAll = false;
			output('<span class="internal boldnshit">Showing <strong>ALL</strong> messages</span>');
		}
	} else {
		var onoff = !opts.showMessagesFilters[type].show;
		opts.showMessagesFilters[type].show = onoff;
		var allTrue = true;
		var allFalse = true;
		$.each(opts.showMessagesFilters, function(key, val) {
			if (key != 'All') {
				if (allTrue)
					allTrue = (val.show ? true : false);
				if (allFalse)
					allFalse = (val.show ? false : true);
			}
		});
		opts.showMessagesFilters['All'].show = (allTrue ? true : false);
		$('#filter_All').prop('checked', (allTrue ? true : false));

		if (allTrue) {
			opts.filterHideAll = false;
			$('#messages .entry.hidden[data-filter]').removeClass('hidden');
		} else if (allFalse) {
			opts.filterHideAll = true;
			$('#messages .entry *:nth-child(1):not(.internal)').each(function(i, el) {
				$(el).parent('.entry').addClass('hidden').attr('data-filter', 'All');
			});
		} else if (typeof opts.showMessagesFilters[type].match != 'undefined') { /* If the filter has classes to match against */
			/* Hide/Show all prior messages */
			for (var i = 0; i < opts.showMessagesFilters[type].match.length; i++) {
				var thisClass = opts.showMessagesFilters[type].match[i];
				if (onoff) { /* showing */
					$('#messages .entry.hidden[data-filter="'+type+'"]').removeClass('hidden');
				} else { /* hiding */
					$('#messages .'+thisClass).each(function(i, el) {
						$(el).closest('.entry').addClass('hidden').attr('data-filter', type);
					});
				}
			}
		} else if (type == 'Misc') {
			if (onoff) {
				$('#messages .entry.hidden[data-filter="Misc"]').removeClass('hidden');
			} else {
				$('#messages .entry *:nth-child(1):not([class]), #messages .entry:not(:has(>*))').each(function(i, el) {
					$(el).parent('.entry').addClass('hidden').attr('data-filter', 'Misc');
				});
			}
		}

		var msg = (onoff ? 'Showing' : 'Filtering <strong>OUT</strong>') + ' messages of type <strong>'+type+'</strong>';
		output('<span class="internal boldnshit">'+msg+'</span>');
	}
	console.log('filters is: ', opts.showMessagesFilters);
}

$contextMenu.on('mousedown', function(e) {
	e.preventDefault();
	var target = $(e.target);
	var id = target.attr('id');
	if (!id) {
		output('<span class="internal boldnshit">Failed to retrieve context menu command data. Report this bug.</span>');
	} else {
		var command = target.attr('id').substring(4);
		runByond('byond://?action=ehjax&type=datum&datum=chatOutput&proc=handleContextMenu&param[command]=' + command + '&param[target]=' + opts.contextMenuTarget);
	}
});

$messages.on('contextmenu', '.adminHearing .name', function(e) {
	var $this = $(this);
	var mind = $this.attr('data-ctx');
	var flags = $this.closest('.adminHearing').attr('data-ctx');
	if (mind && flags) {
		openContextMenu(flags, mind, e.clientX, e.clientY);
		return false;
	}
	else {
		if (!mind && !flags) {
			output('<span class="internal boldnshit">Failed to retrieve context menu option data. Report this bug.</span>');
		}
	}
});

$subOptions.on('click', '#filterMessagesOpt', function(e) {
	if ($('#filterMessages').is(':visible')) {return;}
	var content = '<div class="head">Filter Messages</div>'+
		'<div id="filterMessages" class="filterMessages">';
	$.each(opts.showMessagesFilters, function(key, val) {
		content += '<div><input type="checkbox" id="filter_'+key+'" name="'+key+'" value="'+key+'" '+(val.show ? 'checked="checked" ' : '')+'/> <label for="filter_'+key+'">'+key+'</label></div>';
	});
	content += '</div>';
	createPopup(content, 150);
});

$('body').on('click', '#filterMessages input', function() {
	var type = $(this).val();
	console.log('hit change event with type: '+type);
	toggleFilter(type);
	$('body,html').scrollTop($messages.outerHeight());
});</script>�   |8��͋W    �  changelog.html <style type=text/css>.postcard {display: block; margin: 10px auto; width: 300px;}
	h1 {font-size: 2.5em; padding: 0 10px; margin: 0; color: #115FD5;}
	h1 a {display: block; float: right;}
	.links {list-style-type: none; margin: 15px 5px; padding: 0; border: 1px solid #ccc; color: #333;}
	.links li {float: left; width: 50%; text-align: center; background: #f9f9f9; padding: 10px 0; position: relative;}
	.links li span {position: absolute; top: 0; right: 0; bottom: 0; width: 1px; background: #ccc;}

	.log {list-style-type: none; padding: 0; background: #f9f9f9; margin: 20px 5px; border: 1px solid #ccc; font-size: 1em; color: #333;}
	.log li {padding: 5px 5px 5px 20px; border-top: 1px solid #ccc; line-height: 1.4}
	.log li.title {background: #efefef; font-size: 1.7em; color: #115FD5; padding: 10px 10px; border-top: 0;}
	.log li.date {background: #f1f1f1; font-size: 1.1em; font-weight: bold; padding: 8px 5px; border-bottom: 2px solid #bbb;}
	.log li.admin {font-size: 1.2em; padding: 5px 5px 5px 10px;}
	.log li.admin span {color: #2A76E7;}

	h3 {padding: 0 10px; margin: 0; color: #115FD5;}
	.team, .lic {padding: 10px; margin: 0; line-height: 1.4;}
	.lic {font-size: 0.9em;}</style> <!-- HTML GOES HERE -->�   �Q�Ʀ͋W    �  davipatury.txt general
	key = "Davipatury"
	ckey = "davipatury"
	gender = "male"
	joined = "2015-01-18"
	online = 1
world/1
	name = "Space Station 13"
	path = "Exadv1.SpaceStation13"
	hub_url = "http://www.byond.com/games/Exadv1/SpaceStation13"
	icon = "http://www.byond.com/games/hubicon/8266.png"
	small_icon = "http://www.byond.com/games/hubicon/8266_s.png"
	banner = "http://www.byond.com/games/banners/8266.png"
	status = "<b>Beat!Station: station_name</b> &#8212; <b>NSS Cyberiad</b> (<a href=\"http://nanotrasen.se/phpBB3/index.php\">Custom ParaCode</a>)<br>The Perfect Mix of RP & Action<br>: secret, no respawn, AI allowed, ~15 players"
	players = 15
�>   �e���͋W    �>  banPanel.html <!DOCTYPE html> <html> <head> <title>Ban Panel</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/font-awesome.css> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/style.css> <style type=text/css>body {font-size: 8pt; font-family: Arial; padding-top: 30px;}
        a {color: green; text-decoration: none;}
        a:hover, a:visited {color: #076307;}
		.header {height: 30px; padding: 0 10px; position: fixed; top: 0; left: 0; right: 0; background: #ddd; font-size: 1.1em; border-bottom: 1px solid #ccc;}
		.header strong {float: left; line-height: 30px;}
		.header form {float: right;}
		.header .text {float: left; border: 0; width: 150px; height: 20px; line-height: 20px; margin: 5px 0 0 0; padding: 0 5px; font-size: 0.9em; border-bottom: 1px solid #ccc; border-right: 1px solid #aaa;}
		.header form select {float: left; width: 60px; height: 21px; line-height: 20px; margin: 5px 0 0 5px; font-size: 0.9em; border: 0; border-bottom: 1px solid #ccc; border-right: 1px solid #aaa;}
		.header .search {float: left; border: 0; margin: 5px 0 0 5px; height: 20px; line-height: 20px; padding: 0 5px; background: #076307; color: #eee; font-size: 0.8em; vertical-align: middle;}
		.header .search:hover {background: green; cursor: pointer;}
		.header .searchInfo {float: left; line-height: 30px; margin: 0 5px; font-size: 0.9em;}
		.header .refresh {float: left; text-decoration: none; margin: 0 10px 0 -10px; padding: 0 10px; background: #ccc; font-size: 0.8em; color: green; display: inline-block; height: 30px; line-height: 30px; vertical-align: middle;}
        .header .addNew {float: right; text-decoration: none; margin: 0 -10px 0 10px; padding: 0 10px; background: #ccc; font-size: 0.8em; color: green; display: inline-block; height: 30px; line-height: 30px; vertical-align: middle;}
        .header .refresh:hover, .header .addNew:hover {background: #bbb;}

		table {width: 100%;}
		td {padding: 6px 5px; border-bottom: 1px solid #ededed;}
		table thead {background: #eee;}
		table thead th {padding: 5px 0; border-bottom: 1px solid #ccc;}
		th.blank {color: #eee;}
		th .sortBy i {margin-left: 5px;}
		td.full {padding: 10px;}
        td.actions {width: 70px;}
        td.actions a {display: inline-block; padding: 2px; text-align: center;}
        td.actions i {font-size: 1.3em;}
        td.actions a:hover {background: #ccc;}
        td.ckey {width: 90px; word-break: break-all;}
        td.time {width: 60px;}
        td.akey {width: 80px; word-break: break-all;}
        td.reason {line-height: 1.4;}
        td.compID {width: 60px;}
        td.ip {width: 70px;}

		.pagination {float: left; padding: 0 0 0 30px; list-style-type: none; text-align: center; margin: 0; height: 30px;}
		.pagination li {float: left; line-height: 30px;}
		.pagination a {text-decoration: none; display: inline-block; padding: 5px 7px; line-height: 20px;}
		.pagination a:hover {background: #ccc;}
		.pagination .current {background: #ccc;}

		.switchRemoved {display: block; position: fixed; bottom: 0; right: 170px; padding: 8px; background: #ddd; border-top: 1px solid #bbb; border-left: 1px solid #ccc; border-right: 1px solid #ccc;}
		.switchRemoved:hover {background: #ccc;}</style> </head> <body> <div class=header> <a href="" data-start=0 class=refresh title=Refresh><i class="icon-refresh icon-large"></i></a> <strong><span class=results>0 total bans</span> | <span class=sortedBy>By id desc</span></strong> <ul class=pagination></ul> <a href="" class=addNew title="Add New Ban"><i class="icon-plus icon-large"></i></a> <form method=GET action=""> <span class=searchInfo></span> <input type=text class=text> <select> <option value=all selected>All</option> <option value=ckey>Key</option> <option value=akey>Admin</option> <option value=reason>Reason</option> <option value=compID>CompID</option> <option value=ip>IP</option> </select> <input type=submit value=Search class=search> </form> </div> <table border=0 cellspacing=0 cellpadding=0 id=bansTable> <thead> <tr> <th class=blank>Actions</th> <th><a href="" class=sortBy data-value=ckey>Key</a></th> <th>Time</th> <th><a href="" class=sortBy data-value=akey>Admin</a></th> <th><a href="" class=sortBy data-value=reason>Reason</a></th> <th><a href="" class=sortBy data-value=compID>Comp ID</a></th> <th><a href="" class=sortBy data-value=ip>IP</a></th> </tr> </thead> <tbody> <tr> <td colspan=7 class=full>Loading bans...</td> </tr> </tbody> </table> <a href="" class=switchRemoved title="Switch the view to show removed bans">Removed Bans View</a> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <script type=text/javascript language=JavaScript>var ref_src = null /* ref_src */;
		var CMinutes = null /* cminutes */;
		var windowName = null /* window_name */;
		var apiKey = null /* api_key */;
		var totalBans = 0;
		var pageLimit = 100; //How many rows per page
		var viewRemoved = 0;
		var searchValues = {
			'term': '',
			'column': 'all',
			'offset': 0,
			'sort': 'id',
			'order': 'desc'
		};

		function urldecode(str) {
			return decodeURIComponent((str+'').replace(/\+/g, '%20'));
		}
		function htmlEncode(value) {
			return $('<div/>').text(value).html();
		}
		function urlEncodeParams(data) {
			var string = '';
			$.each(data, function(key, val) {
				string += '&'+key+'='+encodeURIComponent(val);
			});
			return string;
		}

		function ehjaxCallback (data) {
			var parsed = $.parseJSON(data);
			if (parsed.cminutes) {
				CMinutes = parseInt(parsed.cminutes);
				delete parsed.cminutes;
			}
			if (parsed.callback) {
				var callback = parsed.callback;
				delete parsed.callback;
				window[callback](2, parsed);
			}
		}

		function getExpiry (minutes) {
			minutes = parseInt(minutes);
			var exp = minutes - CMinutes;
			if (minutes === 0)
				return 'Permanent';
			else {
				var timeleftstring;
				if (exp >= 1440) { //1440 = 1 day in minutes
					exp = Math.round((exp / 1440) * 10) / 10;
					timeleftstring = exp+' Day'+(exp > 1 || exp < -1 ? 's' : '');
				}
				else if (exp >= 60) { //60 = 1 hour in minutes
					exp = Math.round((exp / 60) * 10) / 10;
					timeleftstring = exp+' Hour'+(exp > 1 || exp < -1 ? 's' : '');
				}
				else
					timeleftstring = exp+' Minute'+(exp > 1 || exp < -1 ? 's' : '');
				return timeleftstring;
			}
		}

		function parseRow (row, hideChain) {
			if (typeof(hideChain) === 'undefined') hideChain = 0;

			var html =
			'<tr>'+
				'<td class="actions">';

			if (!viewRemoved) {
				html += '<a href="?src='+ref_src+'&action=unbane'+urlEncodeParams({id: row.id, target: row.ckey, compID: row.compID, ip: row.ip, reason: row.reason, timestamp: row.timestamp})+'" title="Edit"><i class="icon-edit"></i></a>'+
						'<a href="?src='+ref_src+'&action=unbanf'+urlEncodeParams({id: row.id, target: row.ckey, compID: row.compID, ip: row.ip})+'" title="Unban"><i class="icon-trash"></i></a>';
			}
			
			html +=	'<a href="?src='+ref_src+'&action=notes'+urlEncodeParams({target: row.ckey})+'" title="Notes"><i class="icon-comments-alt"></i></a>'+
				'</td>'+
				'<td class="ckey">'+
					'<a href="'+row.ckey+'" class="searchFor">'+row.ckey+'</a>'+
				'</td>'+
				'<td class="time">'+getExpiry(row.timestamp)+'</td>'+
				'<td class="akey">'+
					(row.oakey == 'N/A' || row.akey == 'Auto Banner' ? '<a href="'+row.akey+'" class="searchFor">'+row.akey+'</a>' : '<a href="'+row.oakey+'" class="searchFor">'+row.oakey+'</a>')+
					(row.oakey != row.akey && row.oakey != 'N/A' ? (row.akey == 'Auto Banner' ? '<br /><small>Original: <a href="'+row.oakey+'" class="searchFor">'+row.oakey+'</a></small>': '<br /><small>Edited by: <a href="'+row.akey+'" class="searchFor">'+row.akey+'</a></small>') : '')+
					(hideChain ? '' : (parseInt(row.previous) > 0 ? '<br /><small><a href="'+row.previous+'" class="previous" data-previous="'+row.previous+'">(Show chain)</a></small>' : '') )+
				'</td>'+
				'<td class="reason">'+(parseInt(row.chain) > 0 ? '[Evasion Attempt x'+row.chain+'] Previous Reason: ' : '') + row.reason +'</td>'+
				'<td class="compID"><a href="'+row.compID+'" class="searchFor">'+row.compID+'</a></td>'+
				'<td class="ip"><a href="'+row.ip+'" class="searchFor">'+row.ip+'</a></td>'+
			'</tr>';
			return html;
		}

		function buildPagination (total, start) {
			var pages = Math.ceil(total / pageLimit);
			var pagination = '';
			for (var i = 1; i <= pages; i++) {
				var elStart = (i - 1) * pageLimit;
				var className = '';
				if (elStart == parseInt(start)) {
					className += 'current';
				}
				var html = '<li><a href="" data-start="'+elStart+'" class="'+className+'">'+i+'</a></li>';
				pagination += html;
			}
			return pagination;
		}

		function updateBans (step, data) {
			if (step === 1) {
				data = (data ? data : {});
				var term = (data.term ? data.term : '');
				var column = (data.column ? data.column : 'all');
				var offset = (data.offset ? data.offset : 0);
				var sort = (data.sort ? data.sort : 'id');
				var order = (data.order ? data.order : 'desc');

				//Assign to globals
				searchValues = {
					'term': term,
					'column': column,
					'offset': offset,
					'sort': sort,
					'order': order
				};

				$('#bansTable tbody').html('<tr><td colspan="7" class="full">Loading bans...</td></tr>');
				window.scrollTo(0, 0);

				if (apiKey) {
					if (window.XMLHtpRequest) {
						xmlHttp = new XMLHttpRequest();
					} else {
						xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
					}

					xmlHttp.open('GET', 'http://goonhub.com/ss13/bans/get?search['+column+']='+term+'&sort='+sort+'&order='+order+'&offset='+offset+'&limit='+pageLimit+'&removed='+viewRemoved+'&bypass=1&forcejson=1&auth='+apiKey+'&t='+Math.random(), false);
					xmlHttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
					xmlHttp.send();
					var bansData = xmlHttp.responseText;
					try {
						bansData = $.parseJSON(bansData);
					} catch(err) {
						$('#bansTable tbody').html('<tr><td colspan="7" class="full">JSON is invalid: '+err+'<br/>'+xmlHttp.responseText+'</td></tr>');
						return;
					}
					window.location = '?action=ehjax&window='+windowName+'&proc=getWorldMins'; //Update the cminutes var
					updateBans(2, bansData);
				} else { //Local bans db lookup
					window.location = '?action=ehjax&window='+windowName+'&proc=getBanApiFallback&param[searchCol]='+column+'&param[search]='+term+'&param[sort]='+sort+'&param[order]='+order+'&param[offset]='+offset+'&param[limit]='+pageLimit+'&param[removed]='+viewRemoved;
				}
			}

			if (step === 2) {
				var totalBans = data.total;
				delete data.total;
				var term = searchValues.term;
				var column = searchValues.column;
				var offset = searchValues.offset;
				var sort = searchValues.sort;
				var order = searchValues.order;

				//Shove all our results in the table
				var html = '';
				$.each(data, function(id, row) {
					html += parseRow(row, 0);
				});
				$('#bansTable tbody').html(html);
				$('.header .results').text(totalBans+' total bans');

				//Update the pagination
				var paginationEl = $('.pagination');
				var pagination = buildPagination(totalBans, offset);
				if (pagination != paginationEl.html()) {
					paginationEl.html(pagination);
				}

				var sortedHtml = 'By '+sort+' '+order;
				if (sort != 'id') {
					sortedHtml += ' <a href=""><i class="icon-remove"></i></a>';
				}
				$('.header .sortedBy').html(sortedHtml);

				$('.header .searchInfo').html((term.length > 0 ? 'Searching for '+term+' '+(column ? 'in '+column+' ' : '')+'<a href="" data-start="0"><i class="icon-remove"></i> Cancel</a>' : ''));
			}
		}

		function getPreviousBans(id) { //This is annoying enough to be in it's own mostly copy and pasted function
			if (typeof(id) === 'undefined') id = '1';

			$('#bansTable tbody').html('<tr><td colspan="7" class="full">Loading bans...</td></tr>');
			window.scrollTo(0, 0);

			if (window.XMLHtpRequest) {
				xmlHttp = new XMLHttpRequest();
			} else {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}

			xmlHttp.open('GET', 'http://goonhub.com/ss13/bans/getPrevious?id='+id+'&forcejson=1&bypass=1&auth='+apiKey+'&t='+Math.random(), false);
			xmlHttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xmlHttp.send();
			var bansData = htmlEncode(xmlHttp.responseText);
			try {
				bansData = $.parseJSON(bansData);
			} catch(err) {
				$('#bansTable tbody').html('<tr><td colspan="7" class="full">JSON is invalid: '+err+'</td></tr>');
				return;
			}
			window.location = '?action=ehjax&window='+windowName+'&proc=getWorldMins'; //Update the cminutes var

			totalBans = bansData.total;
			delete bansData.total;

			//Shove all our results in the table
			var html = '';
			$.each(bansData, function(id, row) {
				html += parseRow(row, 1);
			});
			$('#bansTable tbody').html(html);
			$('.header .results').text(totalBans+' total bans');
			$('.pagination').html(''); //Remove pagination because fuck it I'm not doing this for this too
			$('.header .searchInfo').html('Searching for previous bans of ID: '+id+' <a href="" data-start="0"> <i class="icon-remove"></i> Cancel</a>');
		}

		function searchBans (term, column) {
			term = term.replace(/^\s+|\s+$/gm,'');
			if (term.length <= 2) {
				$('.header .searchInfo').html('3 characters minimum');
				return;
			}
			searchValues.term = term;
			if (!column || column.length < 1) {
				column = 'all';
			}
			searchValues.column = column;
			$('.header form .text').val(term);
			searchValues.offset = 0;
			updateBans(1, searchValues);
		}

		$(function() {
			updateBans(1); //Initial load

			//Events!
			$('body').on('click', '.pagination a, .header a.refresh', function(e) {
				e.preventDefault();
				searchValues.offset = $(this).attr('data-start');
				updateBans(1, searchValues);
			});

			$('body').on('click', '.searchInfo a', function(e) {
				e.preventDefault();
				searchValues.term = '';
				searchValues.offset = $(this).attr('data-start');
				$('.header form select').val('all');
				updateBans(1, searchValues);
			});

			$('body').on('click', '.sortedBy a', function(e) {
				e.preventDefault();
				searchValues.sort = 'id';
				searchValues.order = 'desc';
				$('#bansTable a.sortBy').each(function(key, el) {
					$(el).find('i').remove();
				});
				updateBans(1, searchValues);
			});

			$('.header form').submit(function(e) {
				e.preventDefault();
				var term = $(this).children('input').val();
				var column = $(this).children('select').val();
				searchBans(term, column);
			});

			$('#bansTable').on('click', 'a.searchFor', function(e) {
				e.preventDefault();
				var column = $(this).parent().attr('class');
				column = (column ? column : 'all');
				searchBans($(this).text(), column);
			});

			$('#bansTable').on('click', 'a.sortBy', function(e) {
				e.preventDefault();
				var sort = $(this).attr('data-value');
				if (searchValues.sort == sort) {
					searchValues.order = (searchValues.order == 'asc' ? 'desc' : 'asc');
				} else {
					searchValues.sort = sort;
					searchValues.order = 'desc';
				}
				$('#bansTable a.sortBy').each(function(key, el) {
					$(el).find('i').remove();
				});
				var iconClass = (searchValues.order == 'asc' ? 'icon-caret-up' : 'icon-caret-down');
				$(this).append('<i class="'+iconClass+'"></i>');
				updateBans(1, searchValues);
			});

			$('body').on('click', '#bansTable a.previous', function(e) {
				e.preventDefault();
				getPreviousBans($(this).attr('data-previous'));
			});
			
			$('.header .addNew').attr('href', '?src='+ref_src+';action=addban');

			$('.switchRemoved').click(function(e) {
				e.preventDefault();
				searchValues.term = '';
				searchValues.sort = 'id';
				searchValues.order = 'desc';
				$('.header form select').val('all');
				if (viewRemoved) {
					$(this).text('Removed Bans View');
					viewRemoved = 0;
				} else {
					$(this).text('Current Bans View');
					viewRemoved = 1;
				}
				updateBans(1, searchValues);
			});
		});</script> </body> </html>6    ?wp��΋W    $    DDMI   �   seeds-ovl @��� � �B /   ��^|�ϋW        DDMI   `   mrmuggles @  �:  �I���ϋW    (   �PNG

   IHDR           �Tg�   PLTELiq I� b� f� =y��� e�aaajjj����j+�   tRNS @��f   dzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT SI��3%���4��L+J�M���\�\�& ��}��C   HIDAT(�c`� 0B FEB��@�$�"��$‬DHU	���$4�41K3�i��SBq�� �u���G    IEND�B`�+   ��Q��ϋW        DDMI   �  knife @  �'  �	�ϋW       �PNG

   IHDR           �Tg�   PLTELiqFFF���uvt���gccIKIZZZ?@?v榵   tRNS @��f   dzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT SI��3%���4��L+J�M���\�\�& ��}��C   8IDAT(�c`�!D�3*�	����Ђa(c !�10�.��.P\�&��08Tp0� vS
g�F)�    IEND�B`�6   v�ϟ�ыW    $    DDMI   �  snackcake @����� �B 6   >��Q ҋW    $    DDMI   �  snackcake @���� f�B 6   v��� ҋW    $    DDMI   �  snackcake @���  ��B 6   ��B ҋW    $    DDMI   �  snackcake @���ۡ(�B 6   �d�� ҋW    $    DDMI   �  snackcake @���T  �B 6   h�ۯҋW    $    DDMI   �  snackcake @���3� �B 4   3\O�ҋW    "    DDMI   )	  wanted-unknown @���3   �B�ҋW    !    DDMI   T	  precursor-2fx @���6   xL�1ҋW    $    DDMI   �   seeds-ovl @���   �B 6   r}�1ҋW    $    DDMI   �   seeds-ovl @�������B �   ߟ9�=ҋW    o    DDMIg   d  �  eyebot-logout @   BJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B'   ��YMҋW        DDMI   �  ����B �   �#KcҋW    �    DDMI�   X   body_m @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B3   �cҗcҋW    !    DDMI   �  ice100 @���P���B 3   L��CcҋW    !    DDMI   �  ice100 @���'�B 3   ƴ��cҋW    !    DDMI   �  ice100 @�������B 3   ����cҋW    !    DDMI   �  ice100 @�������B 3   ٢�cҋW    !    DDMI   �  ice100 @������B 3   P�cҋW    !    DDMI   �  ice100 @����(��B 3   /{�cҋW    !    DDMI   �  ice100 @����}(�B 3   ����cҋW    !    DDMI   �  ice100 @����� �B 3   ����cҋW    !    DDMI   �  ice100 @�������B 3   �ix�cҋW    !    DDMI   �  ice100 @����#g�B 3   ��jcҋW    !    DDMI   �  ice100 @�������B 1   gx�dҋW        DDMI   �  butt @���   �B �   wD�dҋW    �    DDMI}   		  head @���   �B Y   eyes @����BBY   short @����BBY   tramp @����BBY   none @����BBM   (��FdҋW    ;    DDMI3   �  chest_m @���   �B �  chest_blood @���B3   x�a�ҋW    !    DDMI   T	  precursor-5fx @����   O9⩘ҋW    �    DDMI|   		  head @���   �B Y   eyes @����BBY   short @����BBY   none @����BBY   none @����BB�   �H���ҋW    �    DDMI{   		  head @���   �B Y   eyes @����BBY   pomp @�����F�BBY   none @����BBY   none @����BB�   ӭ?�ҋW    �    DDMI�   X   body_f @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B,   2�^�ҋW        DDMI   		  monkey @���;   �2;�ҋW    )    DDMI!   d  �  eyebot-logout @   B3   A�ҚҋW    !    DDMI   d  N   blank @   B�   �����ҋW    �    DDMI�   X   body_m @���   �B Y   eyes @����BY   short @����BBY   none @����BBY   none @����BBw   none @�������BBB-   �R�#�ҋW        DDMI   n   preview @���