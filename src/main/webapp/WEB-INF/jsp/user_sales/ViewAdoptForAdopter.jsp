<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@ include file="../common/IncludeTop.jsp"%>
<div id="BackLink"><stripes:link
        beanclass="org.mybatis.jpetstore.web.actions.UserSalesActionBean"
        event="viewSalesList">
    Return to SALES LIST
</stripes:link></div></br></br>
<head>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            /*background-color: #333;*/
            text-align:center
        }
        ul:after{
            content:'';
            display: block;
            clear:both;
        }
        li {
            display: inline-block;
        }
        li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover:not(.active) {
            background-color: darkgray;
        }
        .active {
            background-color: #4CAF50;
        }
        table{
            text-align:center
        }
        td{text-align:center}
    </style>
</head>
<%--<script type="text/javascript">
    $(document).ready(function(){

        $("#nextBtn").click(function(){
            if($("#check_1").is(":checked") == false){
                alert("약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else{
                $("#terms_form").submit();
            }
        });
    });
</script>--%>

<div id="Catalog"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.UserSalesActionBean"
        focus="" acceptcharset="UTF-8"  >

    <h2>입양 신청서 정보</h2>
    <table align="center">
        <tr>
            <td>입양자 정보</td>
            <td>${actionBean.userAdopt.auserid}</td>
        </tr>
        <tr>
            <td>거주지역</td>
            <td>${actionBean.userAdopt.aarea}</td>
        </tr>
        <tr>
            <td>월급</td>
            <td>${actionBean.userAdopt.asalary}</td>
        </tr>
        <tr>
            <td>거주 형태</td>
            <td>${actionBean.userAdopt.ahome}</td>
        </tr>

        <tr>
            <td>동거인 수</td>
            <td>${actionBean.userAdopt.afamnum}</td>
        </tr>
        <tr>
            <td>동거 반려동물</td>
            <td>${actionBean.userAdopt.apets}</td>
        </tr>
        <tr>
            <td>반려동물 키움 경험</td>
            <td>
                <c:if test="${actionBean.userAdopt.apetexp==1}">있음</c:if>
                <c:if test="${actionBean.userAdopt.apetexp==0}">없음</c:if>
            </td>
        </tr>
        <tr>
            <td>사유 및 각오</td>
            <td>${actionBean.userAdopt.anote}</td>
        </tr>
    </table>
    <h3>반려동물 정보</h3>
    <table align="center" border>
        <tr>
            <td>종류</td>
            <td>${actionBean.userSale.scategory}</td>
            <td>성별</td>
            <td>${actionBean.userSale.sgender}</td>
        </tr>
        <tr>
            <td>품종</td>
            <td>${actionBean.userSale.sdesc}</td>
            <td>개월 수</td>
            <td>${actionBean.userSale.sage}</td>
        </tr>
        <tr>
            <td>분양구분</td>
            <td>
                <c:if test="${actionBean.userSale.scharge==0}">
                    무료
                </c:if>
                <c:if test="${actionBean.userSale.scharge==1}">
                    유료
                </c:if>
            </td>
            <td>분양지역</td>
            <td>${actionBean.userSale.sarea}</td>
        </tr>
        <tr>
            <td>분양가</td>
            <td>${actionBean.userSale.sprice}</td>
            <td>특이사항</td>
            <td>${actionBean.userSale.snote}</td>
        </tr>
    </table>
    <stripes:submit name="deleteAdopt" value="삭제"/>
</stripes:form>
</div>
<%--<div align="center">
    <tr>
        <td>약관</td>
        <br>
        <td>약관 예시 text</td>
    </tr>
</div>
<div style="text-align: center">

&lt;%&ndash;    동의합니다
    <p>
        <input type="checkbox" id="check_1"  name="" /> 위의 약관에 동의 합니다.<br />
    </p>&ndash;%&gt;

</div>--%>

<%@ include file="../common/IncludeBottom.jsp"%>
</html>