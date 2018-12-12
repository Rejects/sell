<html>
<#include "../common/header.ftl">
<body>

<div id="wrapper" class="toggled">
    <#--边栏sidebar-->
    <#include "../common/nav.ftl">

    <#--主要内容content-->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <h3>
                            商品详情
                        </h3>
                    </div>
                    <div class="col-md-12 column">
                        <form role="form" action="/sell/seller/product/save" method="post">
                            <div class="form-group">
                                <label>名称</label>
                                <input name="productName" type="text" class="form-control" id="productName" value="${(productInfo.productName)!}"/>
                            </div>
                            <div class="form-group">
                                <label>价格</label>
                                <input name="productPrice" type="text" class="form-control" id="productPrice" value="${(productInfo.productPrice)!}"/>
                            </div>
                            <div class="form-group">
                                <label>库存</label>
                                <input name="productStock" type="number" class="form-control" id="productStock" value="${(productInfo.productStock)!}"/>
                            </div>
                            <div class="form-group">
                                <label>描述</label>
                                <input name="productDescription" type="text" class="form-control" id="productDescription" value="${(productInfo.productDescription)!}"/>
                            </div>
                            <div class="form-group">
                                <label>图片</label>
                                <img src="${(productInfo.productIcon)!""}" style="width: 100px; height: 100px">
                                <input name="productIcon" type="text" class="form-control" id="productIcon" value="${(productInfo.productIcon)!}"/>
                                <#--<input name="productIcon" type="file" id="exampleInputFile"/>-->
                            </div>
                            <div class="form-group">
                                <label>类目</label>
                                <select name="categoryType" class="form-control">
                                    <#list productCategoryList as productCategory>
                                        <option value="${productCategory.categoryType}"
                                            <#if (productInfo.categoryType)?? && productCategory.categoryType == productInfo.categoryType>
                                                selected
                                            </#if>
                                        >
                                            ${productCategory.categoryName}
                                        </option>
                                    </#list>
                                </select>
                            </div>
                            <input type="hidden" name="productId" value="${(productInfo.productId)!}">
                            <button type="submit" class="btn btn-default">提交</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>


</body>
</html>