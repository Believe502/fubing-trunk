<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="head">
	<div class="hd">
		<p class="heaLogo f_l" style="width:296px;height:79px;">
			<a href="index.php" target="_parent" title="IT营"> 
				<!-- <img src="static/public/images/frontImages/logo.gif" alt="IT营"> -->
				Logo
			</a>
		</p>
		<div class="hd_search f_l">
			<div class="tab_search ">

				<div id="search" class="clearfix">
					<form id="searchForm" name="searchForm" method="get"
						action="search.php" onSubmit="return checkSearchForm()"
						class="f_r">
						<input name="keywords" type="text" id="searchinput" value=""
							class="f_l searchinput" /> <input name="imageField"
							type="submit" value="" class="searchbtn"
							style="cursor:pointer; border:none" />
					</form>
					<div class="keys f_l">
						<script type="text/javascript">
						<!--
							function checkSearchForm() {
								if (document.getElementById('keyword').value) {
									return true;
								} else {
									alert("请输入搜索关键词！");
									return false;
								}
							}
							-->
						</script>
						<font>热门搜索 ：</font> <a href="search.php?keywords=Html5">Html5</a>
						<a href="search.php?keywords=PhoneGap">PhoneGap</a> <a
							href="search.php?keywords=php%E6%95%99%E7%A8%8B">php教程</a> <a
							href="search.php?keywords=Hadoop">Hadoop</a> <a
							href="search.php?keywords=Angularjs">Angularjs</a> <a
							href="search.php?keywords=cocos2d">cocos2d</a> <a
							href="search.php?keywords=NoSql">NoSql</a> <a
							href="search.php?keywords=Css3">Css3</a>
					</div>

				</div>

			</div>
		</div>

		<div class="heaCar" onmouseover="this.className='heaCar heaCar_on'"
			onmouseout="this.className='heaCar'">
			<div class="clearfix" id="ECS_CARTINFO">
				<a href="flow.php">购物车&nbsp;( <a href="flow.php" title="查看购物车">0</a>
					)&nbsp;件
				</a>
			</div>
		</div>
	</div>

</div>
