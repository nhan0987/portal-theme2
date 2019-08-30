<div class="UNDP_home row" id="fullpage" role="main">
	<!-- Section 1 -->
	<div class="section row-1">
		<div class="slide-wrapper">
		    <div class="img-1"></div>
		    <div class="img-2"></div>
		    <div class="img-3"></div>
		</div>
		<div class="container">
			<h2 class="is-animated animated fadeInLeft">$themeDisplay.translate("text-undp-r1")</h2>
			<div class="slogan is-animated animated fadeInUp">$themeDisplay.translate("resilience-adaptation-transformation")</div>
		</div>
		<footer id="footer" class="container-fluid hidden-xs">
			<div class="row">
				<div class="container">
					<div class="">
						<i class="fa fa-map-marker" aria-hidden="true"></i> 
						$themeDisplay.translate("text-address")
					</div>
					<div class="social-icons">
						<span><a href="/contact-us">$themeDisplay.translate("contact-us")</a></span>
						<div class="group-icons">
							<a href="https://www.facebook.com/vungvenbienvabiendoikhihau/?ref=br_rs" target="_blank">
								<img src="/UNDP-v2-theme/images/icon_FB.png" class="img-responsive">
							</a>
							<a href="https://www.youtube.com/watch?v=-kgRljqsJf0&list=PLD50rE5h1Tkdem1Wpe8YTONutarxeX2HK" target="_blank">
								<img src="/UNDP-v2-theme/images/icon_youtube.png" class="img-responsive">
							</a>
							<a href="https://twitter.com/UNDPVietNam" target="_blank">
								<img src="/UNDP-v2-theme/images/icon_twitter.png" class="img-responsive">
							</a>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<!-- Section 2 -->
	<!-- <div class="portlet-layout row-fluid section row-2"> 
    	<div class="portlet-column portlet-column-only span12" id="column-1"> 
      		$processor.processColumn("column-1", "portlet-column-content portlet-column-content-only")
      	</div>
    </div> -->
    <div class="section row-2">
		<div class="container">
			<div class="head">
				#if($themeDisplay.getLocale() == 'vi_VN')
					<img src="/UNDP-v2-theme/images/wwd-vi.png" class="img-responsive">
					#else
					<img src="/UNDP-v2-theme/images/wwd.png" class="img-responsive">
				#end
				<p>$themeDisplay.translate("text-undp-r2")</p>
			</div>
			<div class="take-1 is-animated">
				<div class="row">
					<div class="col-xs-12">
						<div class="title">$themeDisplay.translate("project-target")</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="row">
							<div class="col-sm-4">
								<img src="/UNDP-v2-theme/images/wwd-1.png" class="img-responsive center-block">
							</div>
							<div class="col-sm-8">
								<p><a href="/resilient-housing">$themeDisplay.translate("resilient-housing")</a> <span>4,000 $themeDisplay.translate("houses")</span></p>
								<!-- <a href="/web/undp/resilient-housing" class="more">Learn more</a> -->
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="row">
							<div class="col-sm-4">
								<img src="/UNDP-v2-theme/images/wwd-2.png" class="img-responsive center-block">
							</div>
							<div class="col-sm-8">
								<p><a href="/mangrove-regeneration">$themeDisplay.translate("mangrove-regeneration")</a> <span>4,000 $themeDisplay.translate("hectares")</span></p>
								<!-- <a href="/web/undp/mangrove-regeneration" class="more">Learn more</a> -->
								<p><a href="/mangrove-regeneration">$themeDisplay.translate("text-undp-r24")</a> <span>1.9 $themeDisplay.translate("million")</span></p>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="row">
							<div class="col-sm-4">
								<img src="/UNDP-v2-theme/images/wwd-3.png" class="img-responsive center-block">
							</div>
							<div class="col-sm-8">
								<p><a href="/climate-change-and-resilience-information-management">$themeDisplay.translate("text-undp-r22")</a> <span>20,000 $themeDisplay.translate("people")</span></p>
								<!-- <a href="/web/undp/climate-change-and-resilience-information-management" class="more">Learn more</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="take-2 is-animated">
				<div class="row">
					<div class="col-xs-12">
						<div class="title">$themeDisplay.translate("progress-to-date")</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<p><a href="/resilient-housing">$themeDisplay.translate("text-undp-r23")</a></p>
						<div class="content">
							<span id="resilient-housing-total">699</span>
							<script type="text/javascript">
								
								var localYear = [2018,2019,2020,2021,2022];
								var resilience = "resilienceHousing";
								var languageId = "$themeDisplay.getLanguageId()";
								
								AUI().use('aui-base',function(A) {
									Liferay.Service('/portal-resilience-data-of-coastal-communities-portlet.resiliencedata/get-all-json-category-resilience-data',
									{
										companyId: $themeDisplay.getCompanyId(),
										groupId: $themeDisplay.getScopeGroupId(),
										parentCategoryId:0,
										years: localYear,
										dataType: resilience,
										languageId:languageId,
									},
									function(obj) {
									
										var builtTotal = 0;
										
										A.Array.each(obj ,function(item,index,collection) {
											var built = item.built;
											if (built > 0){
												builtTotal += built;
											}
										});
										
										if(builtTotal > 0){	
											A.one("#resilient-housing-total").html(builtTotal);
										}
									})
								})
							</script>
						</div>
					</div>
					<div class="col-sm-4">
						<p><a href="/mangrove-regeneration">$themeDisplay.translate("area-of-mangrove-regenerated")</a></p>
						<div class="content">
							<span id="mangrove-regeneration-total">0</span> <span>$themeDisplay.translate("ha")</span>
							
							<script type="text/javascript">
							
								var mangroveRegeration = "mangroveRegeneration";
								
								AUI().use('aui-base',function(A) {
									Liferay.Service('/portal-resilience-data-of-coastal-communities-portlet.resiliencedata/get-all-json-category-resilience-data',
									{
										companyId: $themeDisplay.getCompanyId(),
										groupId: $themeDisplay.getScopeGroupId(),
										parentCategoryId:0,
										years: localYear,
										dataType: mangroveRegeration,
										languageId:languageId,
									},
									function(obj) {
									
										var builtTotal = 0;
										
										A.Array.each(obj ,function(item,index,collection) {
											var built = item.built;
											if (built > 0){
												builtTotal += built;
											}
										});	
										
										if(builtTotal > 0){
											A.one("#mangrove-regeneration-total").html(builtTotal);
										}
										
									})
								})
							</script>
						</div>
					</div>
					<!-- <div class="col-sm-3">
						<p><a href="/mangrove-regeneration">$themeDisplay.translate("text-undp-r24")</a></p>
						<div class="content">
							<span>1.9m</span>
						</div>
					</div> -->
					<div class="col-sm-4">
						<p><a href="/climate-change-and-resilience-information-management">$themeDisplay.translate("local-level-cbdrm-planning")</a></p>
						<div class="content">
							<span id="cbdrm-total">7292</span> <span>$themeDisplay.translate("people")</span>
							
							<script type="text/javascript">
							
								var cbdrm = "cbdrm";
								
								AUI().use('aui-base',function(A) {
									Liferay.Service('/portal-resilience-data-of-coastal-communities-portlet.resiliencedata/get-all-json-category-resilience-data',
									{
										companyId: $themeDisplay.getCompanyId(),
										groupId: $themeDisplay.getScopeGroupId(),
										parentCategoryId:0,
										years: localYear,
										dataType: cbdrm,
										languageId:languageId,
									},
									function(obj) {
									
										var builtTotal = 0;
										
										A.Array.each(obj ,function(item,index,collection) {
											var built = item.built;
											if (built > 0){
												builtTotal += built;
											}
										});
										
										if(builtTotal > 0){	
											A.one("#cbdrm-total").html(builtTotal);
										}
										
									})
								})
							</script>
						</div>
					</div>
				</div>
			</div>
			<div class="social-icons-top">
				<a href="https://www.facebook.com/vungvenbienvabiendoikhihau/?ref=br_rs" target="_blank">
					<i class="fa fa-facebook" aria-hidden="true"></i>
				</a>
				<a href="https://www.youtube.com/watch?v=-kgRljqsJf0&list=PLD50rE5h1Tkdem1Wpe8YTONutarxeX2HK" target="_blank">
					<i class="fa fa-youtube-play" aria-hidden="true"></i>
				</a>
				<a href="https://twitter.com/UNDPVietNam" target="_blank">
					<i class="fa fa-twitter" aria-hidden="true"></i>
				</a>
			</div>
		</div>
	</div>

	<!-- Section 3 -->
	<div class="portlet-layout row-fluid section row-3">
		<div class="portlet-column portlet-column-only span12" id="column-2">
			$processor.processColumn("column-2", "portlet-column-content portlet-column-content-only")
		</div>
	</div>

	<!-- Section 4 -->
	<div class="section row-4">
		<div class="container">
			<div class="head">
				#if($themeDisplay.getLocale() == 'vi_VN')
					<img src="/UNDP-v2-theme/images/pc-vi.png" class="img-responsive">
					#else
					<img src="/UNDP-v2-theme/images/pc.png" class="img-responsive">
				#end
			</div>
			<div class="box-group">
				<div class="box-content press-release">
					$processor.processColumn("column-3", "portlet-column-content portlet-column-content-only")
				</div>
				<div class="box-content feature-article">
					$processor.processColumn("column-4", "portlet-column-content portlet-column-content-only")
				</div>
				<div class="box-content news">
					$processor.processColumn("column-5", "portlet-column-content portlet-column-content-only")
				</div>
				<div class="box-content event">
					$processor.processColumn("column-6", "portlet-column-content portlet-column-content-only")
				</div>
				<div class="box-content video">
					$processor.processColumn("column-7", "portlet-column-content portlet-column-content-only")
				</div>
			</div>
			<div class="social-icons-top">
				<a href="https://www.facebook.com/vungvenbienvabiendoikhihau/?ref=br_rs" target="_blank">
					<i class="fa fa-facebook" aria-hidden="true"></i>
				</a>
				<a href="https://www.youtube.com/watch?v=-kgRljqsJf0&list=PLD50rE5h1Tkdem1Wpe8YTONutarxeX2HK" target="_blank">
					<i class="fa fa-youtube-play" aria-hidden="true"></i>
				</a>
				<a href="https://twitter.com/UNDPVietNam" target="_blank">
					<i class="fa fa-twitter" aria-hidden="true"></i>
				</a>
			</div>
		</div>
	</div>

	<!-- Section 5 -->
	<div class="section row-5">
		<div class="container">
			<div class="row eq-height-lg flex-break">
				<div class="col-sm-6 col-md-3 is-animated">
					<img src="/UNDP-v2-theme/images/Logo_1.png" class="img-responsive">
					<a href="https://www.greenclimate.fund/" target="_blank">$themeDisplay.translate("logo-name-1")</a>
				</div>
				<div class="col-sm-6 col-md-3 is-animated">
					<img src="/UNDP-v2-theme/images/Logo_2.png" class="img-responsive">
					<a href="https://www.mard.gov.vn/en/Pages/default.aspx" target="_blank">$themeDisplay.translate("logo-name-2")</a>
				</div>
				<div class="col-sm-6 col-md-3 is-animated">
					<img src="/UNDP-v2-theme/images/Logo_4.png" class="img-responsive">
					<a href="http://www.xaydung.gov.vn/web/guest" target="_blank">$themeDisplay.translate("logo-name-3")</a>
				</div>
				<div class="col-sm-6 col-md-3 is-animated">
					<img src="/UNDP-v2-theme/images/Logo_3.png" class="img-responsive">
					<a href="http://www.vn.undp.org/" target="_blank">$themeDisplay.translate("logo-name-4")</a>
				</div>
				<div class="col-sm-6 col-md-3 is-animated">
					<img src="/UNDP-v2-theme/images/Logo_5.png" class="img-responsive">
					<a href="http://tongcuclamnghiep.gov.vn/" target="_blank">$themeDisplay.translate("logo-name-5")</a>
				</div>
				<div class="col-sm-6 col-md-3 is-animated">
					<img src="/UNDP-v2-theme/images/Logo_6.png" class="img-responsive">
					<a href="http://phongchongthientai.vn/default.aspx" target="_blank">$themeDisplay.translate("logo-name-6")</a>
				</div>
			</div>
			<div class="social-icons-top">
				<a href="https://www.facebook.com/vungvenbienvabiendoikhihau/?ref=br_rs" target="_blank">
					<i class="fa fa-facebook" aria-hidden="true"></i>
				</a>
				<a href="https://www.youtube.com/watch?v=-kgRljqsJf0&list=PLD50rE5h1Tkdem1Wpe8YTONutarxeX2HK" target="_blank">
					<i class="fa fa-youtube-play" aria-hidden="true"></i>
				</a>
				<a href="https://twitter.com/UNDPVietNam" target="_blank">
					<i class="fa fa-twitter" aria-hidden="true"></i>
				</a>
			</div>
		</div>
	</div>

	<!-- Section 6 -->
	<div class="section row-6">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<ul>
						<li class="head"><a href="/home">$themeDisplay.translate("text-menu-1")</a></li>
					</ul>
					<ul>
						<li class="head">$themeDisplay.translate("text-menu-2")</li>
						<li><a href="/general-information#gi1">$themeDisplay.translate("text-menu-21")</a></li>
						<li><a href="/general-information#gi2">$themeDisplay.translate("text-menu-22")</a></li>
						<li><a href="/general-information#gi3">$themeDisplay.translate("text-menu-23")</a></li>
						<li><a href="/general-information#gi4">$themeDisplay.translate("text-menu-24")</a></li>
					</ul>
					<ul>
						<li class="head">$themeDisplay.translate("text-menu-3")</li>
						<li><a href="/resilient-housing">$themeDisplay.translate("text-menu-31")</a></li>
						<li><a href="/mangrove-regeneration">$themeDisplay.translate("text-menu-32")</a></li>
						<li><a href="/climate-change-and-resilience-information-management">$themeDisplay.translate("text-menu-33")</a></li>
					</ul>
				</div>
				<div class="col-sm-4">
					<ul>
						<li class="head">$themeDisplay.translate("text-menu-4")</li>
						<li><a href="/the-bigger-picture#bp1">$themeDisplay.translate("text-menu-41")</a></li>
						<li><a href="/the-bigger-picture#bp2">$themeDisplay.translate("text-menu-42")</a></li>
						<li><a href="/the-bigger-picture#bp3">$themeDisplay.translate("text-menu-43")</a></li>
						<li><a href="/the-bigger-picture#bp4">$themeDisplay.translate("text-menu-44")</a></li>
						<li><a href="/the-bigger-picture#bp5">$themeDisplay.translate("text-menu-45")</a></li>
						<li><a href="/the-bigger-picture#bp6">$themeDisplay.translate("text-menu-46")</a></li>
					</ul>
				</div>
				<div class="col-sm-4">
					<ul>
						<li class="head">$themeDisplay.translate("text-menu-5")</li>
						<li><a href="/in-the-news">$themeDisplay.translate("text-menu-51")</a></li>
						<li><a href="/press-release">$themeDisplay.translate("text-menu-52")</a></li>
						<li><a href="/feature-article">$themeDisplay.translate("text-menu-53")</a></li>
						<li><a href="/meet-the-people">$themeDisplay.translate("text-menu-54")</a></li>
						<li><a href="/videos">$themeDisplay.translate("text-menu-55")</a></li>
					</ul>
					<ul>
						<li class="head">$themeDisplay.translate("text-menu-6")</li>
						<li><a href="/follow-our-progress-reports">$themeDisplay.translate("text-menu-61")</a></li>
						<li><a href="/technical-resources">$themeDisplay.translate("text-menu-62")</a></li>
						<li><a href="/training-and-manuals-for-implementation">$themeDisplay.translate("text-menu-63")</a></li>
						<li><a href="/albums-image">$themeDisplay.translate("text-menu-64")</a></li>
					</ul>
					<ul>
						<li class="head"><a href="/contact-us">$themeDisplay.translate("contact-us")</a></li>
					</ul>
				</div>
			</div>
		</div>
		<footer id="footer" class="container-fluid hidden-xs">
			<div class="row">
				<div class="container">
					<div class="">
						<i class="fa fa-map-marker" aria-hidden="true"></i> 
						$themeDisplay.translate("text-address")
					</div>
					<div class="social-icons">
						<span><a href="/contact-us">$themeDisplay.translate("contact-us")</a></span>
						<div class="group-icons">
							<a href="https://www.facebook.com/vungvenbienvabiendoikhihau/?ref=br_rs" target="_blank">
								<img src="/UNDP-v2-theme/images/icon_FB.png" class="img-responsive">
							</a>
							<a href="https://www.youtube.com/watch?v=-kgRljqsJf0&list=PLD50rE5h1Tkdem1Wpe8YTONutarxeX2HK" target="_blank">
								<img src="/UNDP-v2-theme/images/icon_youtube.png" class="img-responsive">
							</a>
							<a href="https://twitter.com/UNDPVietNam" target="_blank">
								<img src="/UNDP-v2-theme/images/icon_twitter.png" class="img-responsive">
							</a>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</div>