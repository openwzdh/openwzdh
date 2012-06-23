<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="<{$index_meta_keyword}>" />
<meta name="description" content="<{$index_meta_description}>" />
<title><{$title}></title>
<link href="<{$URL}>/public/home/style/new_green/base.css" rel="stylesheet" type="text/css" />
<style id="temp-css" type="text/css"></style>
<script type="text/javascript" src="<{$URL}>/public/home/js/base.js"></script>
<script type="text/javascript" src="<{$URL}>/public/home/js/core.js"></script>
<script type="text/javascript">if(Cookie.get('layout')){window.location.href='kp.html';}</script>
<base target="_blank" />
</head>
<body>
<em class="filter" style="display:none;"></em>
<div id="wrap">
    <div id="top" class="clearfix">
        <div id="weather"><script>if(top.location == self.location){document.write('<iframe width="540" height="22" frameborder="0" scrolling="no" allowtransparency="true" src="public/widget/weather/index.html"></iframe>')} </script> </div>
        <ul id="set">
            <li class="sethome"><a onclick="Yl.setHome(this,this.href); return false;" target="_self" href="<{$URL}>">把114啦设为主页</a></li>
            <li><a href="<{$URL}>/" target="_parent" class="active">标准版</a> | <a href="<{$URL}>/kp.html" target="_parent" onclick="Cookie.set('layout',1)">宽屏版</a></li>
            <!--<li id="skinlist"><a class="blue" title="蓝色">1</a><a class="green" title="绿色">2</a><a class="pink" title="粉色">3</a></li>
            <li class="setting"><a target="_self" href="javascript:void(0);" id="showSetting">个性设置</a></li>-->
        </ul>
    </div>
    <div id="header">
        <div class="box clearfix">
            <h1 id="logo"><a href="<{$URL}>" target="_parent" title="114啦网址导航"><img src="<{$URL}>/static/images/logo.gif" height="69" width="117" /></a></h1>
            <div id="email_114la">
                <form id="mail" name="mail" method="post" onsubmit="MailLogin.sendMail();return false;" action="" target="_blank">
                    <ul>
                        <li>
                            <label for="mail_user_114la">帐号：</label>
                            <input type="text" id="mail_user_114la" class="int" />
                        </li>
                        <li>
                            <label for="mail_server_114la">邮箱：</label>
                            <span class="select box_outer">
                            <select id="mail_server_114la" onchange="MailLogin.change(this)">
                                <option selected="selected">--请选择邮箱--</option>
                                <option>@163.com 网易</option>
                                <option>@126.com 网易</option>
                                <option>@vip.163.com 网易</option>
                                <option>@sina.com 新浪</option>
                                <option>@vip.sina.com 新浪</option>
                                <option>@yahoo.com.cn</option>
                                <option>@yahoo.cn</option>
                                <option>@sohu.com 搜狐</option>
                                <option>@tom.com</option>
                                <option>@21cn.com</option>
                                <option>@yeah.net</option>
                                <option>天涯帐号</option>
                                <option>百度帐号</option>
                                <option>人人网</option>
                                <option>51.com</option>
                                <option>ChinaRen</option>
                                <option style="color:#36c;">--以下请在弹出页登录&darr;--</option>
                                <option>开心网</option>
                                <option>QQ空间</option>
                                <option>@qq.com</option>
                                <option>@139.com</option>
                                <option>@gmail.com</option>
                                <option>@hotmail.com</option>
                                <option>@188.com</option>
                            </select>
                            </span>
                        </li>
                        <li>
                            <label for="mail_passwd_114la">密码：</label>
                            <input type="password" id="mail_passwd_114la" class="int" />
                            <input type="submit" value="登 录" id="mail_submit_114la" class="btn" />
                        </li>
                    </ul>
                </form>
            </div>
            <div id="bn">
                <ul id="cal">
                    <li class="date"><script type="text/javascript">document.write(Calendar.day());</script> </li>
                    <li class="lcal"><script type="text/javascript">document.write(Calendar.cnday());</script> </li>
                    <li class="m"><a href="http://tool.114la.com/live/calendar/" class="hl">黄历</a><a href="http://astro.114la.com/" class="yc">运程</a><a href="public/widget/clock/index.html" class="clock">闹钟</a></li>
                </ul>
                <div id="bn2">
                <script type="text/javascript" src="static/js/header.js"></script>
                </div>
            </div>
        </div>
        <b class="rc-bt"><b></b></b></div>
        
    <div id="search">
        <div id="ex">
        <{foreach from = $notice_list item = i}>
            <p><a href="<{$i.url}>"<{if $i.color}> style="color:<{$i.color}>"<{/if}>><{$i.name}></a></p>
        <{/foreach}>
        </div>
        <div id="sm" class="clearfix">
            <ul id="sm_tab">
                <{foreach from=$search_class item=search_class1}>
                <li s_tab="js_type_<{$search_class1.classid}>" <{if $search_class1.is_default}> class="active" default="1"<{/if}>><{$search_class1.classname}></li>
                <{/foreach}>
            </ul>
        </div>
        <div id="sb" class="clearfix">

            <{foreach from=$search_class item=search_class2}>
            <div id="js_type_<{$search_class2.classid}>" <{if $search_class2.is_default!=1}> style="display:none;"<{/if}>>
                <div class="sw">
                    <p id="sw_<{$search_class2.classid}>">
                        <{foreach from=$search_keyword item=keyword}>
                            <{if $keyword.class == $search_class2.classid}>
                                <a href="<{$keyword.url}>"><{$keyword.name}></a>
                            <{/if}>
                        <{/foreach}>
                    </p><!--/ keywords-->
                </div>
                <div class="sf">
                    <form action="http://116.com/s" method="get" target="_blank">
                        <a href="http://116.com" id="sf_label" rel="lk"><img src="static/images/s/116.gif" width="105" height="35" rel="img" /></a><input type="text" name="q" class="int" autocomplete="off" rel="kw"/><input class="searchint" type="submit" value="116聚搜" rel="btn" />
                        <div class="ctrl">
                        <{foreach from=$search item=row1}>
                            <{if $row1.class == $search_class2.classid}>
                            <label><input class="radio" type="radio" value="engine_<{$row1.id}>" name="search_select" rad="engine_<{$row1.id}>" <{if $row1.is_default}> checked="checked"<{/if}> /><{$row1.search_select}></label>
                            <{/if}>
                        <{/foreach}>
                        </div>
                    </form>
                </div>
            </div>
            <{/foreach}>
           
            <div id="suggest" style="display:none"></div>
        </div>
    </div>
    
        
    <div id="hot"><{*名站上方广告*}>
        <{foreach from = $advert_search_footer item = i}><a <{if $i.color=='#FF0000' || $i.color=='red'}>class="red"<{elseif $i.color=='#008000' || $i.color=='green'}>class="green"<{elseif $i.color=='#0000FF' || $i.color=='blue'}>class="blue"<{elseif $i.color!=''}>style="color:<{$i.color}>;"<{/if}> target="_blank" href="<{$i.link}>"><{$i.title}></a><{/foreach}>
    </div>
    <div id="content">
        <div id="cate"><b class="rc-tp"><b></b></b>
            <div class="box">
                <div id="tool">
                    <h2 class="tool-title">实用工具<span><a href="http://tool.114la.com/" rel="nr">更多&raquo;</a></span></h2>
                    <ul>
                        <{*实用工具*}>
                        <{foreach from = $tools item = i}>
                            <li><a href="<{$i.url}>"<{if $i.color}> style="color:<{$i.color}>"<{/if}>><{$i.name}></a></li>
                        <{/foreach}>
                    </ul>
                    <ul id="tool-tab" class="clearfix">
                        <li id="tool-tab-def" rel="tb4" class="active">手机</li>
                        <li rel="tb1">机票</li>
                        <li rel="tb2">酒店</li>
                        <li id="tool-tab-last" rel="tb3">旅游</li>
                    </ul>
                    <div id="tb">
                        <div id="tb1" class="tbox" style="display:none;">
                            <form class="plane" action="http://site.daodao.com/114la/go" accept-charset="utf-8" onsubmit="document.charset='utf-8';">
                                <p class="first">&nbsp;从 &nbsp;
                                    <input type="text" class="int_b" name="from" value="北京" />
                                    &nbsp;到&nbsp;
                                    <input name="to" type="text" class="int_b" value="上海" />
                                </p>
                                <p>日期&nbsp;
                                    <input type="text" class="int" id="jp_today" name="date" />
                                    &nbsp;
                                    <input type="submit" value="查看折扣价" style="font-size:12px;" class="btn" />
                                </p>
                            </form>
                        </div>
                        <div id="tb2" class="tbox" style="display:none">
                            <form class="plane" action="http://www.daodao.com/HACSearch" accept-charset="utf-8" onsubmit="document.charset='utf-8';">
                                <p class="first">城市&nbsp;
                                    <input  name="q" class="int_b" value="北京" style="width:40px">
                                    &nbsp;价格&nbsp;
                                    <select name="l1price" style="font-size:12px; width:75px;">
                                        <option value="0,200">0-200元</option>
                                        <option value="201,500">201-500元</option>
                                        <option value="501,800">501-800元</option>
                                        <option value="800">800元以上</option>
                                        <option value="" selected="selected">不限</option>
                                    </select>
                                </p>
                                <p>酒店&nbsp;
                                    <input  name="nameContains" class="int_b" value="">
                                    &nbsp;
                                    <input type="submit" value="搜 索" class="btn" style="width:70px;" />
                                    <input type="hidden" name="m" value="13078" />
                                </p>
                            </form>
                        </div>
                        <div id="tb3" class="tbox" style="display:none">
                            <form class="plane" action="http://www.daodao.com/Search" onsubmit="daodao.searchTravel(); return false;">
                                <p class="first">城　市&nbsp;
                                    <input type="text" id="daodao_travel_q" class="int_b" name="q" value="北京" />
                                </p>
                                <p>关键字&nbsp;
                                    <input class="int_b" id="daodao_travel_k" value="">
                                    &nbsp;
                                    <input type="submit" value="旅游搜索" style="height:22px; width:70px;" class="btn" />
                                    <input type="hidden" name="m" value="13078" />
                                </p>
                            </form>
                        </div>
                        <div id="tb4" class="tbox" style="margin-left:-5px;">
                            <form class="plane" action="http://cz.115.com/" method="post" target="_blank">
                                <p class="first">
                                    <select name="parvalue" style="font-size:12px; padding:1px;">
                                    	<option value="300">300元</option>
                                        <option selected="selected" value="100">100元</option>
                                        <option value="50">50元</option>
                                        <option value="30">30元</option>
                                    </select>
                                    <input type="text" class="int_b" name="mobile" maxlength="11" value="请输入手机号码" onclick="(this.value == '请输入手机号码')?this.value='':this.focus()" onblur="this.value==''?this.value='请输入手机号码':this.value = this.value" style="width:88px;color:#666;font-size:12px;*line-height:16px;" />
                                    <input type="submit" value="充值" style="height:22px;  width:38px;" class="btn" />
                                    <input type="hidden" name="ac" value="topup_submit" />
                                    <input type="hidden" name="source" value="114la" />
                                </p>
                                <p style="text-align:center;"><span class="red">1</span>分钟到账&nbsp;&nbsp;最低<span class="red">9.85</span>折&nbsp;&nbsp;&nbsp;<a href="http://www.915.com" class="red">上915淘号</a></p>
                            </form>
                        </div>
                    </div>
                </div>
                <{*网站分类*}>
                <{foreach from = $site_class key = k item = parent}>
                    <h2><{$k}></h2>
                    <ul<{if $parent.0.classname_len > 6}> class="c2"<{/if}>>
                    <{foreach from = $parent item = i}>
                        <li ><a href="<{$i.urlpath}>"><{$i.classname}></a></li>
                    <{/foreach}>
                    </ul>
                <{/foreach}>
            </div>
        <b class="rc-bt"><b></b></b></div>
        <div id="main">
            <div id="bm"><b class="rc-tp"><b></b></b>
                <ul id="bm_tab" class="clearfix">
                    <li id="bm-def" class="active" rel="fm">名站导航</li>
                    <{foreach from = $famous_tab item = tab key = i}>
                    <li rel="bb<{$i}>" url="<{$tab.url}>" nocache=<{$tab.nocache}>><{$tab.name}></li>
                    <{/foreach}>
                </ul><div id="qs"><b class="l"></b><div id="q_int" class="n"><div class="button-wrap"><input type="text" /></div></div><b class="r"></b></div>
            </div>
            <div id="bb">
                <div class="box">
                    <div id="fm">
                        <ul id="topsite" class="clearfix">
                            <{*TOP 名站*}>
                            	<{foreach from = $mz_top item = i}>
                            	<{$i.html}>
                            <{/foreach}>
                        </ul>
                        <ul id="fmsite" class="clearfix">
                            <{*名站*}>
                            <{foreach from = $mz_list item = i}>
                            <li><a href="<{$i.url}>" <{if $i.namecolor=='#FF0000' || $i.namecolor=='red'}>class="red"<{elseif $i.namecolor=='#008000' || $i.namecolor=='green'}>class="green"<{elseif $i.namecolor=='#0000FF' || $i.namecolor=='blue'}>class="blue"<{elseif $i.namecolor!=''}>style="color:<{$i.namecolor}>;"<{/if}>><{$i.name}></a></li>
                            <{/foreach}>
                        </ul>
                    </div>
                    <div id="qs-result" style="display:none;"></div>
                </div>
                <b class="rc-bt"><b></b></b></div>
            <div id="hot2">
                <{*名站下方广告*}>
                <{$advert_notice}>
            </div>
            <div id="ls"><b class="rc-tp"><b></b></b>
                <div class="box">
					<{*城市导航*}>
                    <dl id="local" style="visibility:hidden;">
                        <dt id="loc_t"></dt>
                        <dd class="l" id="loc_c"></dd>
                        <dd class="m" id="loc_m"></dd>
                    </dl>
                    <{*酷站导航*}>
                    <{foreach from = $kz_list key ='key' item = 'item' name = n}><dl <{if $smarty.foreach.n.iteration % 2 eq 0}>class="alt"<{/if}>id="ls<{$smarty.foreach.n.iteration}>"><dt><a href="<{$item.url}>"><{$key}></a></dt><dd class="l"><{foreach key='k' item='v' from=$item.son}><a href="<{$v.url}>" <{if $v.namecolor=='#FF0000' || $v.namecolor=='red'}>class="red"<{elseif $v.namecolor=='#008000' || $v.namecolor=='green'}>class="green"<{elseif $v.namecolor=='#0000FF' || $v.namecolor=='blue'}>class="blue"<{elseif $v.namecolor!=''}>style="color:<{$v.namecolor}>;"<{/if}>><{$v.name}></a><{/foreach}></dd><dd class="m"><a href="<{$item.url}>">更多 &raquo;</a></dd></dl><{/foreach}>
                </div>
                <b class="rc-bt"><b></b></b></div>
        </div>
    </div>
    <div id="meta"><b class="rc-tp"><b></b></b>
        <div class="box">
            <ul>
            <{*专题*}>
        <{foreach from = $topics item = parent}>
        <li class="bd">
            <strong><a href="<{$URL_HTML}>/topic/<{$parent.path}>/index.htm"><{$parent.name}></a></strong>
            <{if !empty($parent.son)}>
            <{foreach from = $parent.son item = v}>
            <a href="<{if $v.url}><{$v.url}><{else}><{$URL_HTML}>/topic/<{$parent.path}>/index.htm#<{$v.id}><{/if}>"><{$v.name}></a>
            <{/foreach}>
            <{/if}>
            <span class="more"><a href="<{$URL_HTML}>/topic/<{$parent.path}>/index.htm">更多 &raquo;</a></span>
        </li>
        <{/foreach}>
         <{if $links}>
         <li class="bd">
            <strong><a href="<{$URL_HTML}>/catalog/links.htm">友情链接</a></strong>
            <{foreach from=$links item=links}>
            <a  href="<{$links.site_url}>" title="<{$links.site_name}>"><{$links.site_name}></a>
            <{/foreach}>
            <span class="more"><a href="<{$URL_HTML}>/catalog/links.htm">更多 &raquo;</a></span>
         </li>
         <{/if}>
            </ul>
        </div>
    </div>
    <div id="fs">
        <div class="box">
            <form id="fs_form" onsubmit="miniSearch.gosearch(this);return false;" action="http://116.com/s" target="_blank" method="get">
            <ul class="clearfix">
            <li id="f_label">关键字：</li>
            <li id="f_int">
            <input name="q" type="text"/>
            </li>
            <li id="f_btn">
            <input type="submit" value="搜 索" />
            </li>
            </ul>
            <input type="hidden" name="ie" value="gbk" />
            </form>
            <form id="taobao-form" action="http://search8.taobao.com/browse/search_auction.htm" target="_blank" style="display:none;">
            <input type="text" name="q" id="taobao-q" />
            </form>
            <div id="f_radio">
            <label for="s0"><input type="radio" name="st" class="radio" id="s0" checked="checked" />116搜索</label>
            <label for="s1"><input type="radio" name="st" class="radio" id="s1" />Google</label>
            <label for="s3"><input type="radio" name="st" class="radio" id="s3" />淘宝</label>
            <label for="s5"><input type="radio" name="st" class="radio" id="s5" />购物客</label>
            <label for="s4"><input type="radio" name="st" class="radio" id="s4" />彩票</label>
            </div>
        </div>
        <b class="rc-bt"><b></b></b></div>
    <div id="footer">
        <div class="link"><a href="http://www.114la.com/114la/">关于114啦建站系统V1.15</a> | <a href="/url-submit/">网站提交</a> | <a href="<{$URL}>/feedback">意见反馈</a> | <a href="http://www.114la.com/114la">源码下载</a><br />
        </div>
        <div class="hr"></div>
        <p class="copyright">Powered by 114啦网址导航&copy;2005-<script type="text/javascript">document.write(new Date().getFullYear());</script>. All Rights Reserved. <a href="http://www.miibeian.gov.cn/"><{$icp}></a></p>

    </div>
<script type="text/javascript" src="<{$URL}>/public/home/js/config.js"></script>
<script type="text/javascript" src="<{$URL}>/public/home/js/main.js"></script>
<script type="text/javascript">
    try{
		if(window.SR){
			SR.SearchData = {
                <{foreach from=$search item=row2}>
                    engine_<{$row2.id}>: {
						action: "<{$row2.action}>",
						name: "<{$row2.name}>",
						btn: "<{$row2.btn}>",
						img: ["<{$row2.img_text}>","<{$row2.img_url}>"],
						url: "<{$row2.url}>",
						params: {
							<{$row2.params}>
						}
                    },
                <{/foreach}>
				none:{}
            }	
		}
		
		var sbBox = document.getElementById('sb');
		var sbForms = sbBox.getElementsByTagName('form');
		for(var i = 0,len = sbForms.length; i < len; i++){
			sbForms[i].reset();
		}
		
		var sbRadios = sbBox.getElementsByTagName('input');
		var inputTxtArr = [];
		if(sbRadios.length){
			var setRadios = [];
			for(var i = 0,len = sbRadios.length; i < len; i++){
				var input = sbRadios[i];
				if(input.getAttribute("rad") && input.checked){
					setRadios.push(input);
				}
				else if(input.getAttribute("rel") == "kw"){
					var key = inputTxtArr.push(input);
					input.setAttribute("index",key - 1);
					
				}
			}
			try{
			for(var i = 0,len = setRadios.length; i < len; i++){
				var input = setRadios[i];
				
				SR.RadioMod.ClickRadio(input);
			}
			}catch(e){}
		}
	}catch(e){}
    </script>
<div class="tongji"><{$tongji}></div>

</div>

</body>
</html>
