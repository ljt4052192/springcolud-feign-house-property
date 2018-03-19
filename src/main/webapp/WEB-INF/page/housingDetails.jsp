<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%--shiro 标签 --%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>

<!DOCTYPE html>
<html>
<head>

    <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
    <META NAME="format-detection" CONTENT="telephone=no" />
    <meta name="mobile-agent" content="format=html5; url=https://m.anjuke.com/bj/sale/A1147257144/" />
    <title>【多图】林奥嘉园，朝西两居室，精装修，高层风景好，性价比高, 林奥嘉园二手房, 2室2厅2卫, 760万元 - 北京58安居客</title><meta name="description" content="安居客上海二手房网,提供林奥嘉园二手房出售信息,64406元/m²,2室2厅2卫,朝西,118平方米,2016年精装修普通住宅地址位于清林东路。更多林奥嘉园二手房出售信息就上安居客。"/>
    <meta name="keywords" content="林奥嘉园,2室2厅2卫,2016年精装修普通住宅,清林东路,118平方米,西,高层(共27层)"/>
    <link href="https://beijing.anjuke.com/prop/view/A1147257144" rel="canonical">

    <meta name="baidu-site-verification" content="e8abd676df9f995bc969ac138b1c0f4d"/>
    <meta name="sogou_site_verification" content="7rtgKfBjbl"/>
    <meta name="360-site-verification" content="f7b8b308108b2c1c2de2825948822256" />
    <meta name="google-site-verification" content="drkSj5A3WGSgkMXwzh6UfezwLEMsEXoQlMHL25oE1kA" />
    <meta baidu-gxt-verify-token="9e7961d9a5d01603e5c2ae9bccffb9c2"/>
    <meta name="shenma-site-verification" content="da9c53da88979ec98afae25b1ca3e43b" />
    <!--start-->
    <link rel="stylesheet" rev="stylesheet" href="https://include.anjukestatic.com/anjuke-user/res/20180314.1501.3/b/Ershou_Web_Property_View_View3.css" type="text/css" />
    <!--end-->
    <script type="text/javascript">var PAGESTART = +new Date(); var PHPVERSION = '20180314.1501.3';</script>

    <script type="text/javascript" src="//include.anjukestatic.com/usjs/base/logger/dom.dom/dom.query/ajax/event/ui.panel/ui.autocomplete/ui.exposure/cookie/site/utils.base/a7745b92361b3d50fe42c424545f2d56.js"></script>
    <!-- <script type="text/javascript" src="//include.anjukestatic.com/ujs/chat.opener/a7745b92361b3d50fe42c424545f2d56.js" crossorigin></script> -->
    <script type="text/javascript">J.site.init()</script>


    <!-- -->
    <link rel="shortcut icon" href="https://pages.anjukestatic.com/usersite/site/img/global/1/favicon.ico" />
    <link rel="icon" href="https://pages.anjukestatic.com/usersite/site/img/global/1/favicon.ico" type="image/ico" />

</head>
<body data-page="Ershou_Web_Property_View_View3Page">


<div id="container">

    <div id="content">

        <div class="clearfix title-guarantee">
            <h3 class="long-title">
                ${hashMap.list[0].title}
            </h3>
            <i title="该房源已现金担保，保证房源真实，保证可带看" class="guarantee_icon">安选验真</i>
        </div>
        <div class="wrapper">
            <!--页面左侧-->
            <%--====================================修改======================================--%>
            <div class="wrapper-lf clearfix">
                <div class="basic-info clearfix">
                    <span class="light info-tag"><em>${hashMap.list[0].price}</em>万</span>
                    <span class="info-tag"><em>${hashMap.list[0].room}</em>室<em>${hashMap.list[0].hall}</em>厅<em>${hashMap.list[0].toilet}</em>卫</span>
                    <span class="info-tag"><em>${hashMap.list[0].area}</em>平方米</span>

                </div>

                <!--轮播组件-->
                <div class="switch_warpper">
                    <div class="switch_with_map">
                       <div class="inner_switcher" id="inner_switcher">
                            <div class="switch_mask switch_left_mask" id="switch_left_mask" data-track=pc_fydy_switch_qh>
                                <i class="switch_left_btn switch_btn iconfont" id="switch_left_btn">&#xE023;</i>
                                <span id="prev-title">室内图片</span>
                            </div>
                            <div class="switch_mask switch_right_mask" id="switch_right_mask" data-track=pc_fydy_switch_qh>
                                <i class="switch_right_btn switch_btn iconfont" id="switch_right_btn">&#xE012;</i>
                                <span id="next-title">室内图片</span>
                            </div>
                            <div class="switch_wrap" id="switch_wrap">
                                <div class="switch_list zhankeng_first" id="zhankeng_first">
                                    <div class="img_wrap zhankeng_img1"></div>
                                    <div class="img_wrap zhankeng_img2"></div>
                                </div>
                                <!--室内图-->
                                <div class="switch_list" id="room_pic_wrap">

                                    ${hashMap.listImgString}
                                </div>

                                <!--户型图-->
                                <div class="switch_list" id="hx_pic_wrap">
                                    ${hashMap.listImgString2}
                                </div>

                                <!--环境图-->
                                <div class="switch_list" id="surround_pic_wrap">
                                    ${hashMap.listImgString3}
                                </div>

                                <div class="switch_list zhankeng_last" id="zhankeng_last">
                                    <div class="img_wrap zhankeng_img1"></div>
                                    <div class="img_wrap zhankeng_img2"></div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="switch_tab_wrap " id="switch_tab_wrap">
                        <a class="switch_tag switch_tag_now" href="javascript:;" data-track=pc_fydy_switch_snt id="room_tab">
                            <i class="switch-icon iconfont switch-room-icon">&#xE026;</i>
                            <em class="title">室内图</em>
                        </a>

                        <a class="switch_tag" href="javascript:;" data-track=pc_fydy_switch_hxt id="hx_tab">
                            <i class="switch-icon iconfont switch-hx-icon">&#xE013;</i>
                            <em class="title">户型图</em>
                        </a>
                        <a class="switch_tag" href="javascript:;" data-track=pc_fydy_switch_hjt id="surround_tab">
                            <i class="switch-icon iconfont switch-surd-icon">&#xE014;</i>
                            <em class="title">环境图</em>
                        </a>
                    </div>
                </div>
                <div class="houseInfoBox">
                    <h4 class="block-title houseInfo-title">房屋信息
                        <span class="anxian">
                            <i class="ax-i"></i>
                            <span class="ax-d">
                                <i class="iconfont">&#xE057;</i>
                                <span>保真保看</span>
                                <i class="iconfont">&#xE057;</i>
                                <span>真实在售</span>
                                <i class="iconfont">&#xE057;</i>
                                <span>假赔百元</span></span>
                <div class="anxuan-tip">
                    <em class="arrow-up-t">
                        <em class="arr-t"></em>
                    </em>
                    <p><span>安心挑房：</span>房源存在，价格真实，安心挑房远离虚假。</p>
                    <p><span>安选服务：</span>佣金透明，服务分级，安选服务顺畅交易。</p>
                    <p><span>安全沟通：</span>微聊聊天，保护手机，安全沟通杜绝骚扰。</p>
                </div>
                </span>
                        <span class="house-encode">房屋编码： ${hashMap.list[0].room_num}，发布时间：${hashMap.list[0].release_time}</span></h4>
                    <div class="block-wrap block-nocopy no-bd-top">
                        <div class="houseInfo-wrap">
                            <div class="houseInfo-detail clearfix">
                                <div class="first-col detail-col">
                                    <dl><dt>所属小区：</dt>
                                        <dd>
                                            <a  _soj=propview> ${hashMap.list[0].community}</a>
                                        </dd>
                                    </dl>
                                    <dl><dt>所在位置：</dt>
                                        <dd>
                                            <p class="loc-text">
                                                <a  _soj=propview>${hashMap.list[0].full_name}</a>
                                            </p>
                                           <%-- <i class="iconfont i-location">&#xE003;</i>--%>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>建造年代：</dt>
                                        <dd>${hashMap.list[0].building_time}</dd>
                                    </dl>
                                    <dl>
                                        <dt>房屋类型：</dt>
                                        <dd>${hashMap.list[0].room_type }</dd>
                                    </dl>
                                </div>
                                <div class="second-col detail-col">
                                    <dl>
                                        <dt>房屋户型：</dt>
                                        <dd>
                                            ${hashMap.list[0].room}室${hashMap.list[0].hall}厅${hashMap.list[0].toilet}卫
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>建筑面积：</dt>
                                        <dd>${hashMap.list[0].area}</dd>
                                    </dl>
                                    <dl>
                                        <dt>房屋朝向：</dt>
                                        <dd>${hashMap.list[0].room_direction}</dd>
                                    </dl>
                                    <dl>
                                        <dt>所在楼层：</dt>
                                        <dd>${hashMap.list[0].floor}</dd>
                                    </dl>
                                </div>
                                <div class="third-col detail-col">
                                    <dl>
                                        <dt>装修程度：</dt>
                                        <dd>${hashMap.list[0].decorate}</dd>
                                    </dl>
                                    <dl>
                                        <dt>房屋单价：</dt>
                                        <dd>${hashMap.list[0].unit_price} 元/m²</dd>
                                    </dl>
                                    <dl>
                                        <dt>参考月供：</dt>
                                        <dd>${hashMap.list[0].Monthly_payments}</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <!--tags-->
                        <div class="houseInfo-desc">
                            <!-- 二手房信息 -->
                            <div class="houseInfo-item">
                                <h5 class="houseInfo-item-title">
                                    <span class="iconfont">&#xE092;</span>
                                    <span class="title-content">核心卖点</span>
                                </h5>
                                <div class="houseInfo-item-desc js-house-explain">
                                    <span style="font-size:14px;">
                                        ${hashMap.list[0].Selling_point}
                                    </span>
                                </div>
                            </div>
                            <!-- 二手房信息 -->
                            <div class="houseInfo-item">
                                <h5 class="houseInfo-item-title">
                                    <span class="iconfont">&#xE093;</span>
                                    <span class="title-content">业主心态</span>
                                </h5>
                                <div class="houseInfo-item-desc">
                                    ${hashMap.list[0].owner_mentality}
                                </div>
                            </div>
                            <!-- 二手房信息 -->
                            <div class="houseInfo-item">
                                <h5 class="houseInfo-item-title">
                                    <span class="iconfont">&#xE094;</span>
                                    <span class="title-content">小区配套</span>
                                </h5>
                                <div class="houseInfo-item-desc">
                                    ${hashMap.list[0].community_complete}
                                </div>
                            </div>

                            <div class="houseInfo-item">
                                <h5 class="houseInfo-item-title">
                                    <span class="iconfont">&#xE095;</span>
                                    <span class="title-content">服务介绍</span>
                                </h5>
                                <div class="houseInfo-item-desc">
                                    ${hashMap.list[0].service_introduce}
                                </div>
                            </div>

                            <!-- 二手房信息 -->

                        </div>
                    </div>
                </div>

  <%--========================下面这个Div不能删除不然龙波图图片不显示========================================--%>
                <div class="monthbox">
                    <div class="block-wrap">
                            <div class="ritem">
                                <div class="">
                                    <div class="piechart" id="piechart">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <script>
                            var commInform = {
                                Allprice: "760" || 0,
                                firsetPrice: "228.00" || 0
                            };
                            var cal_grate = [0.0275,0.0325];
                            var cal_brate = [0.0435,0.0435,0.0475,0.0475,0.049];
                        </script>
                    </div>
                </div>
      <%--================================================================--%>
                </div>



            <div class="wrapper-rg clearfix">
                <!-- <p class="broker-title"><i class="iconfont">&#xE019;</i><span>经纪人</span></p> -->
                <div class="block-wrap block-nocopy brokerInfo_mod block-wrap-border">
                    <!--经纪人信息-->



                    <div class="broker-wrap">
                        <div class="img-box system-link-track">

                            <img class="brokercard-img" src="${hashMap.list[0].photo}" />

                            <p class="brokercard-name"> ${hashMap.list[0].name}</p>
                            <div class="broker-tagdiv clearfix">
                                <a href="javascript:" data-track=pc_fydy_jjrxx_zxzx class="chat-enterance chat-able" onMouseOut="hideImg()" onmouseover="showImg()">
                                    <i class="iconfont tag-chat">&#xE029;</i>在线咨询
                                </a>
                            </div>
                            <div id="wxImg" style="display:none;height:80px;position:absolute;">
                                <img class="brokercard-img" src="/photo/mmqrcode1521436272145.png" title="微信号"/>
                            </div>
                        </div>
                        <div class="broker-level clearfix">
                            <%--<span class="stars-title">等级：</span>
                            <div class="stars-wrap-bk" style="width:54px">
                                <p class="stars-bg" style="width:54px">
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                </p>
                                <p class="stars-solid" style="width:45px">
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                    <i class="iconfont">&#xE108;</i>
                                </p>
                            </div>--%>
                            <!-- 如果持平显示与同城平均水平持平 -->
                            <div class="tip-box">
                                <!-- prd上规定如果等于平均水平展示‘与同城平均水平持平’ -->
                                <p>打败了27%的同城经纪人</p>
                                <i class="icon-arrow"><span></span></i>
                            </div>
                        </div>

                        <div class="brokercard-scorewrap clearfix">
                            <span class="brokercard-scoretitle">得分：</span>
                            <div class="brokercard-scoredetail">
                                <div class="brokercard-sd-cont clearfix">
                        <span class="score-down clearfix no-pd-left" style="height: 30px;">
                <em class="score-num" style="margin-top: -7px;">100</em><br><em>房源</em>
            </span>

                                    <span class="score-up clearfix" style="height: 30px;">
                <em class="score-num" style="margin-top: -7px;">80</em><br><em>服务</em>
            </span>

                                    <span class="score-down clearfix no-bd-rg" style="height: 30px;">
                <em class="score-num" style="margin-top: -7px;">66</em><br><em>评价</em>
            </span>

                                </div>
                                <div class="brokercard-sd-tip" style="bottom:47px;">
                                    <i class="arr-down"><i></i></i>

                                    <div class="score-down">
                                        <span class="mg-r">房源真实：
                                            <em class="score-num">0</em>
                                            <i class="score-tag"></i>
                                        </span>
                                        <span>打败了0%的同城经纪人</span>
                                    </div>

                                    <div class="score-up">
                                        <span class="mg-r">服务效率：
                                            <em class="score-num">80</em>
                                            <i class="score-tag"></i>
                                        </span>
                                        <span>打败了54.3%的同城经纪人</span>
                                    </div>

                                    <div class="score-down">
                                        <span class="mg-r">用户评价：
                                            <em class="score-num">60</em>
                                            <i class="score-tag"></i>
                                        </span>
                                        <span>打败了0%的同城经纪人</span>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <p class="broker-mobile"><i class="iconfont">&#xE047;</i>${hashMap.list[0].phonenumer}</p>
<%--
                        <div class="broker-background">
                            <div class="broker-company">

                                <p>公司：<a href="" target="_blank">链鑫</a></p>

                                <p>门店：<a href="" target="_blank">链鑫新宫店</a></p>

                            </div>
                        </div>--%>

                    </div>

                    <script>
                        var bkname_only = "刘思雅";
                    </script>

                </div>
            </div>
        </div>
<%--====================================看不懂不知道有什么用=============================================--%>
      <%--  <div class="iframe-layer-mask forms-single no-thirds no-others" id="rptLoginMask">
            <div class="iframe-layer-bg"></div>
            <div class="iframe-login-wrap" id="rptLoginWrap">
                <iframe class="iframe-login-ifm" id="rptLoginIfm" src="https://login.anjuke.com/login/iframeform?forms=10&third_parts=000&other_parts=000&multi_form=1" frameborder="0" scrolling="no"></iframe>
            </div>
        </div>


        <div class="iframe-layer-mask no-stepover" id="rptBindPhoneMask">
            <div class="iframe-layer-bg"></div>
            <div class="iframe-login-wrap" id="rptBindPhoneWrap">
                <iframe class="iframe-login-ifm" id="rptBindPhone" src="https://login.anjuke.com/login/iframebindphoneform?step_over=1&multi_form=2" frameborder="0" scrolling="no"></iframe>
            </div>
        </div>--%>
    <%--===============================================================================--%>
    </div>


    <div id="footer-mod">
        <script>
            var AJK = AJK || {};
            AJK.SeoRecommend = AJK.SeoRecommend || {};
            AJK.SeoRecommend.type = '';
        </script>
        <div id="footer" class="footer">
            <ul class="links">
                <li>
                    <a rel="nofollow" href="">关于安居客</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a rel="nofollow" href="">联系我们</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a rel="nofollow" href="">用户协议</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a href="javascript:void(0);" data-target="loan_link">房贷计算器</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a href="javascript:void(0);" data-target="seo_qa">最新问答</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a href="javascript:void(0);" data-target="map_link">网站地图</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a href="javascript:void(0);" data-target="house_link">最新房源</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a href="javascript:void(0);" data-target="other_city">其它城市</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a rel="nofollow" href="">友情链接</a>
                    <em class="spe-lines">|</em>
                </li>
                <li>
                    <a rel="nofollow" target="_blank" href="">放心搜</a>
                    <em class='spe-lines'>|</em>
                </li>
                <li>
                    <a rel='nofollow' target='_blank' href="">推广服务</a>
                    <em class='spe-lines'>|</em>
                </li>
                <li>
                    <a rel="nofollow" target="_blank" href="">渠道招商</a>
                </li>
            </ul>

            <div class="cp-mod">
                <a rel="nofollow" href="" target="_blank">客户服务中心</a>&ensp;&ensp;&ensp;
                邮箱：<a href="" target="_blank" rel="nofollow">service@58ganji.com</a>&ensp;&ensp;&ensp;
                Copyright&nbsp;&copy;&nbsp;2007-2018&ensp;www.anjuke.com&ensp;All Rights Reserved&ensp;&ensp;&ensp;<a href="" rel="nofollow">ICP号：沪&ensp;B2-20090008</a>
            </div>

        </div>
    </div>



</div>
<div class="sidebar-mod sidebar-top">
    <a href="javascript:void(0);" class="sid-nav">
        <span class="iconfont">&#xE007;</span>
        <em class="nav-arrow"></em>
        <div class="sidebar-nav-hover">返回顶部</div>
    </a>
</div>

<script type="text/javascript" src="https://pages.anjukestatic.com/usersite/site/js/jquery/1.11.3/jquery-underscore.min.js"></script>

<script type="text/javascript" crossorigin src="https://pages.anjukestatic.com/usersite/site/js/chat/1.3.js"></script>
<script type="text/javascript" crossorigin src="https://pages.anjukestatic.com/usersite/site/js/video/support.js"></script>
<script type="text/javascript" crossorigin src="https://pages.anjukestatic.com/usersite/site/js/video/jquery.jplayer.min.js"></script>
<script type="text/javascript" crossorigin src="https://include.anjukestatic.com/anjuke-user/res/20180314.1501.3/s/page/ershou/web/property/view/APF.js"></script>
<script type="text/javascript" crossorigin src="https://include.anjukestatic.com/anjuke-user/res/20180314.1501.3/s/page/ershou/web/property/view/AbstractView.js"></script>
<script type="text/javascript" crossorigin src="https://include.anjukestatic.com/anjuke-user/res/20180314.1501.3/b/Ershou_Web_Property_View_View3.js"></script>
<script type="text/javascript">

    J.ready(function(){
        var _citySelector = J.globalCitySelector('switch_apf_id_6', 'city-panel', 500);
    });



    $(function(){
        HouseInfoInit();
    });

    $(function(){
        HouseInfoGeneral();
    });

    var config_items = {"traffic":"\u4ea4\u901a\u5730\u6bb5","business":"\u9910\u996e\u8d2d\u7269","school":"\u6559\u80b2\u673a\u6784","medical":"\u533b\u7597\u8bbe\u65bd"};
    var config_items_arr = [];
    for(var _kkk in config_items) {
        config_items_arr.push(_kkk);
    }
    //百度地图
    var MapOps = {
        // 必须的参数（必须写，且必须有值）
        city      : "北京",
        common    : {
            point : {
                lat : "40.040768",
                lng : "116.414965"
            },
            id   : "572306",
            name : "林奥嘉园"
        },
        //这里设置成可配置，和ued，产品确认过以后从这6项中任意配置，整站通用
        //traffic-交通地段，business-餐饮购物，school-教育机构，medical-医疗设施，hotel-酒店住宿，park-休闲公园
        showBtns: config_items_arr
    }
    loadScript();
    function loadScript(){
        var script = document.createElement('script');
        script.src = "//api.map.baidu.com/api?v=2.0&ak=vf6eaN6mYdB3ScABsPWlkqmZ1NU9r3mg&s=1&&callback=mapinit";
        document.getElementsByTagName('head')[0].appendChild(script);
    }

    ;(function ($){
        $('.comm-qa-list').on('mouseenter mouseleave','li a .qa-item-linkto',function(){

            $(this).toggleClass('qa-light');
        });
        $('.comm-qa-list').on('mouseenter mouseleave','li a .qa-item-txt',function(){
            $(this).toggleClass('qa-light');
        });
        $('.comm-qa-unanswer').on('mouseenter mouseleave','li a p',function(){
            $(this).toggleClass('qa-light');
        });
        $('.comm-qa-unanswer').on('mouseenter mouseleave','li a span',function(){
            $(this).toggleClass('qa-light');
        });
        $('.comm-qa-list').on('click', '.qa-brokername', function (e){
            //window.location.href = $(this).data('url');
            if($(this).data('url')&&$(this).data('url').length>0){
                e.stopPropagation();
                e.preventDefault();
                window.open($(this).data('url'),'_blank');
            }
        });
    })(jQuery);

    ;(function ($){
        var hasChartData = ''?true:false;
        if(hasChartData){
            var chartNewMod =  new ajk.chart.priceTrend({
                icon       : ("https://pages.anjukestatic.com/usersite/site/img/global/2" || "") + "/char_circle.png",
                chartId    : $('#linechart'),

                toggleNav  : $('.mod-toggle-nav'),//控制表单现实的tabs
                toggleItem : '.nav-item',////控制表单现实的tab
                selfDrawTab: true,//自己画控制tab
                currentTab : "1",//当前的高亮按钮
                lineColor:{
                    'line1':'#61ab02',
                    'line2':'#e4715e',
                    'line3':'#6b87c7',
                },
                ajaxUrl:'/v3/ajax/getPriceTrend',
                ajaxParam:{
                    comm_id:'572306',
                    block_id:'',
                    area_id:'',
                    num:'12',
                },
                lineTabs:true,//和租房单页相似的不是年月切换的tab
                maxTab:6,
                commName:'',
                blockName:'',
                areaName:'',
                lineNum:3,
                firstNpv:''||'first_npv',
                scondNpv:''||'second_npv',
                thirdNpv:''||'third_npv'
            });
        }else{
            var chartNewMod =  new ajk.chart.priceTrend({
                icon       : ("https://pages.anjukestatic.com/usersite/site/img/global/2" || "") + "/char_circle.png",
                chartId    : $('#linechart'),
                houseItem  : $('.j-house-item'),
                commItem   : $('.j-community-item'),
                areaItem   : $('.j-area-item'),
                isCurrHouse: 1,
                avgDom     : $('.price-trend-mod .item .avg'),
                levelDom   : $('.price-trend-mod .item .price-stat'),
                percentDom : $('.price-trend-mod .item .percent'),
                arrowDom   : $('.price-trend-mod .item .status'),
                monthDom   : $('.price-trend-mod .item .month'),
                commId     : "572306",
                commName   : "林奥嘉园" || "",
                blockName  : "北苑" || "",
                avgPrice   : "64406" || 0,
                nullDataId :["thishousenull","commhousenull", "areahousenull", "chartnoData"],
                descDataId :["thishousedesc","commhousedesc", "areahousedesc"],
                data : null,
                ajaxUrl:"/v3/ajax/prop/pricetrend/",
                isPpc:false,
                token:'',
                version:'',
                wrappeId:'price_trend',
                is_new_version:false        });
        }

    })(jQuery);

    var im_broker_id = '4209453';
    var chat58IM = null;
    var getchatinfoUrl = 'user.anjuke.com';

    (function() {
        var x = document.createElement('script');
        x.async = true;
        x.src = 'https://ifx.anjuke.com/s?c=14&p=2051&lat=40.040768&lng=116.414965&comid=572306&gid=6D7FFD00-842F-A1A8-63D3-8C188433DC5C&o=1';
        var h = document.getElementsByTagName('head')[0];
        if(h)h.insertBefore(x,h.lastChild);
    })();

    new ajk.SrcTopBar.Bar({
        conDom:'.topBar',
        referDom:'.broker-wrap'
    })

    ;(function($){
        window.ajkbfp = {"probability":5,"submitURL":"\/\/www.anjuke.com\/collect\/s","plat":"ajk-pc","force":false,"useCanvas":false,"useWebgl":false};
        $.ajax({
            url:'//pages.anjukestatic.com/kfstouch/bfp/20180126001/ajk_bfp.min.js',
            dataType:'script',
            cache: true,
            success:function(){

            }
        });
    })(window.jQuery || window.Zepto);

    var prop_info = {
        'prop_id' : '1147257144',
        'source_type' : '1',
        'pro_price' : ' 7600000'
    };
    var city_id = 14;
    //房产知识
    var comm_info = {
        'comm_id' : '572306',
        'comm_name' : '林奥嘉园',
        'comm_lat' : '40.040768',
        'comm_lng' : '116.414965'
    };
    var broker_info = {
        'broker_id' : '4209453',
        'chat_id' : '2021013669',
        'is_actived' : '1'
    };

    var room_in_count  =  '9';
    var room_out_count  =  '10';

    var user_anjuke = 'https://user.anjuke.com/';
    var user_anjuke_favorite = user_anjuke+'favorite/fangyuan';
    var user_type = '';
    var user_favorite = '0';
    var user_anjuke_login_111_url = 'https://user.anjuke.com/my/login?history=aHR0cHM6Ly9iZWlqaW5nLmFuanVrZS5jb20vcHJvcC92aWV3L0ExMTQ3MjU3MTQ0P2Zhdm9yaXRlPTExMQ==';
    var user_anjuke_register_111_url = 'https://user.anjuke.com/register/?history=aHR0cHM6Ly9iZWlqaW5nLmFuanVrZS5jb20vcHJvcC92aWV3L0ExMTQ3MjU3MTQ0P2Zhdm9yaXRlPTExMQ==';
    var user_anjuke_login_112_url = 'https://user.anjuke.com/my/login?history=aHR0cHM6Ly9iZWlqaW5nLmFuanVrZS5jb20vcHJvcC92aWV3L0ExMTQ3MjU3MTQ0P2Zhdm9yaXRlPTExMg==';
    var user_anjuke_register_112_url = 'https://user.anjuke.com/register/?history=aHR0cHM6Ly9iZWlqaW5nLmFuanVrZS5jb20vcHJvcC92aWV3L0ExMTQ3MjU3MTQ0P2Zhdm9yaXRlPTExMg==';
    var register_source_code = 'Site_ESF_Register_FP';
    var register_source_code_cp = 'Site_ESF_Price_FP';
    var register_source_code_nh = 'Site_ESF_HouseInfo_FP';
    var register_source_code_sm = 'Site_ESF_MP_FP';
    var link_info = {
        'broker_id' : "4209453" || "",
        'prop_id' : "1147257144" || "",
        'comm_id' : '572306' || "",
        'chat_id' : "2021013669" || "",
        'nearby_type' : "" || "",
        'prop_search_url_pre' : 'https://beijing.anjuke.com/sale/rd1/?kw='
    };
    var anjuke_city_url = '';
    var pro_type = 1;// ershoufang 1 or zufang 2
    var userId = "6D7FFD00-842F-A1A8-63D3-8C188433DC5C";
    var history_url =  "/vppvQueue/?id=1&type=1201";
    var open_new_recommend = 1;
    // 晶赞动态传参
    var __zp_tag_params = {
        "outerid_s": "A1147257144",
        "cid_s": "572306",
        "featured":"0",//new
        p_zp_prodstype: "05d0e8b539620e734e5770ce892e2e20",
        p_zp_prods: {
            "outerid": "A1147257144",
            "cid": "572306",
            "name": "林奥嘉园",
            "category": "北京",
            "subcategory": "朝阳",
            "subcategoryurl": "https://beijing.anjuke.com/sale/chaoyang/",
            "thirdcategory": "北苑",
            "thirdcategoryurl": "https://beijing.anjuke.com/sale/beiyuan/",
            "p_totalprice": "7600000",
            "housetype":"2室2厅2卫",
            "p_img_url": "https://pic1.ajkimg.com/display/anjuke/737e55-%E9%93%BE%E9%91%AB/225fceaa6264f792c0cd587f1a978032-420x315.jpg?t=1",
            "p_clickurl": "https://beijing.anjuke.com/sale/rd1/?kw=林奥嘉园",
            "isfeatured":"0",//new
            "featuredamount":"782"//new
        }
    };
    // 聚效商品回传代码
    var _mvq = window._mvq || [];
    window._mvq = _mvq;
    _mvq.push(['$setAccount', 'm-184379-0']);
    _mvq.push(['$logConversion']);
    _mvq.push(['$setGeneral', 'goodsdetail', '','','']);
    _mvq.push(['setPageUrl',"https://beijing.anjuke.com/sale/rd1/?kw=林奥嘉园"]);
    _mvq.push(['$addGoods', '', '', '林奥嘉园', 'A1147257144', '7600000', 'https://pic1.ajkimg.com/display/anjuke/737e55-%E9%93%BE%E9%91%AB/225fceaa6264f792c0cd587f1a978032-420x315.jpg?t=1', '', '', '', '', '', '', '二手房', '北京', '北苑']);
    _mvq.push(['$addPricing','']);
    _mvq.push(['$logData']);

    //板块id
    var block_id = '871';



    // 轮播
    var switchObj = new SwitchWidthMap.Switch({

        // 可选参数
        speed      : 200, // 切换速度，默认300，单位ms
        lazyLoadNum : 2,   // 预加载图片张数（默认为2）

        // 在init里第一个执行, @switcher指向本实例（提供重写本实例属性、方法的机会）
        initFirst  : function(switcher) {
            // console.log(switcher);
        }
    });


    jQuery(function(){
        new ajk.pc.sideBar();
    })
</script>
<script type="text/javascript">
    (function(){
        function sendSoj(){

            var fixReferer = '',
                curReferer = document.referrer,
                site = 'anjuke',
                CustomParams = '{"v":"2.0","channel":1,"userId":0,"userType":0,"buid":0,"tradeType":1,"proId":1147257144,"COMMID":572306,"brokerId":4209453,"brokerType":2,"hpType":1,"entry":3,"uniqid":"5aaa0ac198f5b2.74481244","romar_item":"00006144020572306","userProId":"A1147257144"}',
                st =  new J.logger.Tracker();
            st.setSite(site);
            st.setPage("Ershou_Web_Property_ViewPage");
            st.setPageName("Anjuke_View_Property");
            st.setReferrer(curReferer ? curReferer : fixReferer);
            st.setNGuid("aQQ_ajkguid");
            st.setNUid("ajk_member_id");
            st.setCustomParam(CustomParams);
            try{
                st.track();
            }catch(err){
                J.logger.log('sendSojError',err);
            }
        }
        sendSoj();
    }());
    // 58 统计 不要cp、sc参数
    (function(){

        try{
            var fixReferer = '',
                curReferer = document.referrer,
                site = 'anjuke',
                st = new SiteTracker();
            st.setSite(site);
            st.setPage("Ershou_Web_Property_ViewPage");
            st.setPageName("Anjuke_View_Property");
            st.setReferer(curReferer ? curReferer : fixReferer);
            st.buildParams();
            var _trackUrl = st.getParams();
            delete _trackUrl.sc;
            delete _trackUrl.cp;
            window._trackURL = JSON.stringify(_trackUrl);

            function loadTrackjs(){
                var s = document.createElement('script');
                s.type = 'text/javascript';
                s.async = true;
                s.src = '//tracklog.58.com/referrer_anjuke_pc.js?_=' + Math.random();
                var b = document.body;
                s.onload = function () {
                    st.setSite(site+'-npv');
                    st.setPage("Ershou_Web_Property_ViewPage"+"_tracklog");
                    st.setPageName("Ershou_Web_Property_ViewPage"+"_tracklog");
                    st.track();
                }
                s.onerror = function () {
                    st.setSite(site+'-npv');
                    st.setPage("Ershou_Web_Property_ViewPage"+"_tracklog_error");
                    st.setPageName("Ershou_Web_Property_ViewPage"+"_tracklog_error");
                    st.track();
                }
                b.appendChild(s);
            }
            setTimeout(function(){loadTrackjs()},0);
        }catch(e){
        }
    })();
</script>

<!-- START: 性能测试监控 -->
<script>
    J.ready(function(){
        var v = 1501241237,
            src = "//pages.anjukestatic.com/prism/performance.js?v="+v;
        J.load(src, function(){
            window.perfConfig = {
                pageName : 'Ershou_Web_Property_View_View3Page',
                siteName : 'ershoufang'
            };
        })
    });
</script>
<!-- END: 性能测试监控 -->

<script type="text/javascript">
    J.ready(function(){
        try{
            window.global = window.global|| {};
        }catch (e){
            window.global = {};
        }
        var exposure =  new J.ui.exposure()
        exposure.setSite("anjuke-exposure-npv");
        exposure.setPage("Ershou_Web_Property_View_View3Page");
        exposure.setPageName("Anjuke_View_Property");
        exposure.setReferrer(document.referrer);
        exposure.setNGuid("");
        exposure.setNUid("");
        exposure.start();
        window.global.exposure = exposure;
    });
</script><script type="text/javascript">
    (function(param){
        var c = {query:[], args:param||{}};
        c.query.push(["_setAccount","8"]);//固定参数
        (window.__zpSMConfig = window.__zpSMConfig||[]).push(c);
        var zp = document.createElement("script"); zp.type = "text/javascript"; zp.async = true;
        zp.src = ("https:" == document.location.protocol ? "https:" : "http:") + "//cdn.zampda.net/s.js";
        var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(zp, s);
    }) (window.__zp_tag_params);
</script>


<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-66151813-1', 'auto');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');

</script>

<div id="ajk-dnscheck-include" href="javascript:;"></div>

<script type="text/javascript">
    (function(){
        try{
            var performance = window.performance,
                list,
                length,
                item,
                i;
            if (performance && $.type(performance.getEntries) === 'function') {
                list = performance.getEntries();
                for (i = 0, length = list.length; i < length; i++) {
                    item = list[i];
                    if (item.initiatorType !== 'css' && item.initiatorType !== 'script') {
                        continue;
                    }
                    if (!/include/i.test(item.name)) {
                        continue;
                    }
                    if(/dev|test|usjs|uscss/.test(item.name)){
                        continue;
                    }
                    if (item.transferSize !== 0) {
                        continue;
                    }
                    var image = new Image();
                    image.src = '//prism.anjuke.com/ts.html?tp=resource&site=usersite&msg=' + encodeURIComponent(item.name);
                }
            }
        }catch(e){

        }
    })();
</script>
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https'){
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else{
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
<script>
  /*微信二维码*/
    function showImg(){
        document.getElementById("wxImg").style.display='block';
    }
    function hideImg(){
        document.getElementById("wxImg").style.display='none';
    }
</script>

</body>
</html>

