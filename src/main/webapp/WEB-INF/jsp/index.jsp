<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>WELCOME TO ICSSE 2017</title>
<link href="vendor/css/show_img.css" rel="stylesheet" type="text/css" />
<link href="vendor/css/search_Article.css" rel="stylesheet" />
<link rel="shortcut icon" type="image/png" href="logo.png" />
<link href="vendor/css/lightbox.css" rel="stylesheet" type="text/css" />

<script src="vendor/js/jquery-1.7.2.min.js"></script>
</head>

<body class="body">
	<form name="form1" method="post" action="./" id="form1">
		<div>
			<input type="hidden" name="RadScriptManager1_TSM"
				id="RadScriptManager1_TSM" value="" /> <input type="hidden"
				name="__EVENTTARGET" id="__EVENTTARGET" value="" /> <input
				type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPaA8FDzhkNThkNDY3YzkxYjJhNhgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgURUmFkV2luZG93TWFuYWdlcjEFOmN0bDA2JHBvcnRsZXRfODAwODg2YTgtY2NiNS00MGRkLTgxM2EtMmMwMmFjMGQyZTkyJFJhZE1lbnXR6eY1A7oiJVUzHNWnYyvp6EknMw==" />
		</div>
		<div>
			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="CA0B0334" />
		</div>
		<div id="RadWindowManager1" style="display: none;">
			<!-- 2011.1.315.35 -->
			<div id="RadWindowManager1_alerttemplate" style="display: none;">
				<div class="rwDialogPopup radalert">
					<div class="rwDialogText">{1}</div>

					<div>
						<a onclick="$find('{0}').close(true);" class="rwPopupButton"
							href="javascript:void(0);"> <span class="rwOuterSpan">
								<span class="rwInnerSpan">##LOC[OK]##</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<div id="RadWindowManager1_prompttemplate" style="display: none;">
				<div class="rwDialogPopup radprompt">
					<div class="rwDialogText">{1}</div>
					<div>

						<input title="Eneter Value"
							onkeydown="return RadWindowprompt_detectenter('{0}', event, this);"
							type="text" class="rwDialogInput" value="{2}" />
					</div>
					<div>
						<a
							onclick="$find('{0}').close(this.parentNode.parentNode.getElementsByTagName('input')[0].value);"
							class="rwPopupButton" href="javascript:void(0);"><span
							class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
						<a onclick="$find('{0}').close(null);" class="rwPopupButton"
							href="javascript:void(0);"><span class="rwOuterSpan"><span
								class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
					</div>
				</div>
			</div>
			<div id="RadWindowManager1_confirmtemplate" style="display: none;">
				<div class="rwDialogPopup radconfirm">
					<div class="rwDialogText">{1}</div>
					<div>
						<a onclick="$find('{0}').close(true);" class="rwPopupButton"
							href="javascript:void(0);"><span class="rwOuterSpan"><span
								class="rwInnerSpan">##LOC[OK]##</span></span></a> <a
							onclick="$find('{0}').close(false);" class="rwPopupButton"
							href="javascript:void(0);"><span class="rwOuterSpan"><span
								class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
					</div>
				</div>
			</div>
			<input id="RadWindowManager1_ClientState"
				name="RadWindowManager1_ClientState" type="hidden" />
		</div>


		<link href="vendor/css/main.css" rel="stylesheet" />
		<link href="vendor/css/mainPortlets.css" rel="stylesheet" />
		<div class="gray">
			<div class="wrapper">
				<table cellspacing="0" cellpadding="0" border="0"
					style="border-collapse: collapse;">
					<tr>
						<td colspan="2">
							<div id="pnTop">
								<div id="pnTopDisplay" style="width: 1000px; float: left">
									<div id='ctl06_portlet_83a3e05a-eb99-4512-bd1a-5af90706fcf3'
										style="width: 574px; float: left">
										<div>
											<div class="P_top">
												<div class="P_logo">
													<div class="anh_logo">
														<img alt=""
															src="vendor/img/Banner%20Hoi%20nghi%20quoc%20te%20new.jpg"
															style="width: 800px; height: 188px;" /><br />
													</div>
													<div class="name_ute"></div>
												</div>
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_6299a742-1878-4325-8536-4faefa3c1b4c'
										style="width: 199px; float: right">
										<div>

											<div class="search_phong">
												<input class="bgsearch_phong" id="txtSearchArticle"
													onkeydown="return SearchProcess(event);" type="text" /><input
													class="btsearch_phong"
													onclick="OnSearch(document.getElementById('txtSearchArticle').value);"
													type="button" />
											</div>
											<div class="link_trang">
												<a href="http://gtsd2018.hcmute.edu.vn">http://gtsd2018.hcmute.edu.vn</a>
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_e28a24d5-befe-4213-a3d5-2e1ebcb2a71e'
										style="width: 1000px; float: left">
										<div>


											<link href="vendor/plugins/nivoslider/css/nivo-slider.css"
												rel="stylesheet" />
											<link href="vendor/plugins/nivoslider/css/default.css"
												rel="stylesheet" />

											<div class="container" style="height: 350px;">
												<div class="slider-wrapper theme-default">
													<div id="slider" class="nivoSlider">

														<a href="" target="_blank"> <img
															src="vendor/img/HNQT3.jpg" title="" /></a> <a href=""
															target="_blank"> <img src="vendor/img/HNQT2.jpg"
															title="" /></a> <a href="" target="_blank"> <img
															src="vendor/img/HNQT1.jpg" title="" /></a>

													</div>
												</div>
											</div>
										</div>
									</div>
									<div id='ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92'
										style="padding: 10px 0px 0px 0px; width: 1000px; float: left">
										<div>

											<link href="vendor/css/Menu.Green.css" rel="stylesheet"
												type="text/css" />
											<div
												id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"
												class="RadMenu RadMenu_Green rmSized"
												style="height: 40px; z-index: 1; width: 100%;">
												<ul class="rmRootGroup rmHorizontal">
													<li class="rmItem rmFirst"><a href="/"
														class="rmLink rmRootLink"><span class="rmText">Home</span></a></li>
													<li class="rmItem rmFirst"><a href="/articles"
														class="rmLink rmRootLink"><span class="rmText">Articles</span></a></li>
													<c:if test="${user!=null}">
														<li class="rmItem rmFirst" style="float: right;"><a
															href="/logout" class="rmLink rmRootLink"><span
																class="rmText">Sign out</span></a></li>
														<li class="rmItem rmFirst" style="float: right;"><span
															class="rmText">${user}</span></li>
													</c:if>
												</ul>
												<input
													id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState"
													name="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState"
													type="hidden" />
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_049ee2f3-c636-43d3-8804-68952b459d4a'
										style="float: left;">
										<div></div>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr valign="top">
						<td>
							<div id="pnCenter">
								<div id="pnCenterDisplay" style="width: 692px; float: left">
									<div id='ctl06_portlet_43f9ded1-4c3b-4b8b-8d8a-01a3ec30711c'
										style="float: left;">
										<div>
											<style>
</style>
											<div id="main">
												<div id="head"></div>
												<div id="head-link"></div>
												<div id="left"></div>
												<div id="content"></div>
												<div id="right"></div>
												<div id="footer"></div>
											</div>

										</div>
									</div>
									<div id='ctl06_portlet_a956cccc-dea3-4440-82a1-2684967a114f'
										style="float: left;">
										<div>
											<p class="MsoNormal"
												style="margin: 6pt 0cm 0.0001pt; text-align: justify;">
											<table style="text-align: justify;">
												<tbody>
													<tr>
														<c:if test="${user!=null }">
															<a
																style="color: #666; text-transform: uppercase; font-weight: bold;">.
															</a>
															<a type="button" style="float: right" class="button"
																href="/edit">Edit webpage</a>
														</c:if>
														${index_content!=null?index_content:"" }

													</tr>
												</tbody>
											</table>
											<br /> <br />
											</p>

										</div>
									</div>
									<div id='ctl06_portlet_08f30a30-e80a-4920-91fe-e32965976466'
										style="float: left;">
										<div>
											<span style="color: #0070c0;"><strong>SPONSORED
													BY<br /> <br /> <br />
													<table>
														<tbody>
															<tr>
																<td style="text-align: center;">&nbsp; &nbsp;&nbsp;<a
																	href="http://hcmute.edu.vn/" target="_blank"><img
																		alt="" src="vendor/img/logo%20HCMUTE.png"
																		style="color: #0070c0; width: 80px; vertical-align: middle;" /></a></td>
																<td style="text-align: center; vertical-align: middle;">&nbsp;
																	&nbsp; <a href="http://ieee.org/" target="_blank"><img
																		alt="" src="vendor/img/IEEEpng.png"
																		style="color: #0070c0; width: 200px; vertical-align: middle;" /></a>
																</td>
																<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a
																	href="http://www.ieeesmc.org/" target="_blank"><img
																		alt="" src="vendor/img/logo-ieee-smc-and.png"
																		style="color: #0070c0; width: 180px; vertical-align: middle;" /></a></td>
															</tr>
															<tr>
																<td>&nbsp;<a
																	href="http://www.twtasse.org/system_en/"
																	target="_blank"><img alt=""
																		src="vendor/img/TASSE%20LOGO.jpg"
																		style="width: 180px;" /></a><br />
																</td>
																<td style="text-align: center; vertical-align: middle;"><a
																	href="http://www.dost.hochiminhcity.gov.vn/default.aspx"
																	target="_blank"><img alt=""
																		src="vendor/img/logo_so_en.jpg" style="width: 120px;" /></a>&nbsp;</td>
																<td>&nbsp; &nbsp; &nbsp;&nbsp;<a
																	href="http://www.daikin.com.vn/en/index.html"
																	target="_blank"><img alt=""
																		src="vendor/img/daikin_logo_dowanload.png"
																		style="width: 200px;" /></a></td>
															</tr>
														</tbody>
													</table> <br />
													<div style="text-align: center;">
														<br />
													</div> <br /> <br /> <br />
											</strong>&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp; &nbsp; &nbsp;&nbsp;<br /> <br /> </span>

										</div>
									</div>
								</div>
							</div>
						</td>
					
					</tr>
					<tr>
						<td colspan="2">
							<div id="pnBottom">
								<div id="pnBottomDisplay"
									style="background-attachment: scroll; width: 1000px; height: 110px">
									<div id='ctl06_portlet_2209a561-f62a-47f4-a3aa-b238aab4ca84'
										style="background-color: blue; width: 1000px; height: 120px; float: left; clear: none">
										<div>
											<div class="addute">
												<span style="font-size: 16px; color: #ffff00;">4th
													International Conference on Green Technology and
													Sustainable Development&nbsp;&nbsp;<br /> HCMC University
													of Technology and Education<br /> Add: No 1 Vo Van Ngan
													Street, Linh Chieu Ward, Thu Duc District, Ho Chi Minh City<br />
													Tel: (+84.8) 37 221 223 - Ext: 8161 or 8443&nbsp;<br />
													E-mail: gtsd2018@hcmute.edu.vn<br />
												</span><br />
											</div>

										</div>
									</div>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</form>

	<script src="vendor/plugins/nivoslider/js/jquery.nivo.slider.js"></script>
	<script>
		$(document).ready(function() {
			$(".nivoSlider").nivoSlider({
				effect : 'random',
				slices : 25,
				boxCols : 8,
				boxRows : 4,
				animSpeed : 500,
				pauseTime : 3000,
				startSlide : 0,
				directionNav : true,
				controlNav : true,
				controlNavThumbs : false,
				pauseOnHover : true,
				manualAdvance : false,
				prevText : 'Prev',
				nextText : 'Next',
				randomStart : false,
				beforeChange : function() {
				},
				afterChange : function() {
				},
				slideshowEnd : function() {
				},
				lastSlide : function() {
				},
				afterLoad : function() {
				}
			});
			$('.nivoSlider').css('height', '350px');
			$('.nivoSlider img').css('height', '350px');
		})
	</script>
</body>

</html>