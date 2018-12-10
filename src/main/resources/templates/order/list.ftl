<html>
<head>
    <meta charset="utf-8">
    <title>卖家商品列表</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-bordered">
                <thead>
                <tr>
                    <th>订单id</th>
                    <th>姓名</th>
                    <th>手机号</th>
                    <th>地址</th>
                    <th>金额</th>
                    <th>订单状态</th>
                    <#--<th>支付方式</th>-->
                    <th>支付状态</th>
                    <th>创建时间</th>
                    <th colspan="2">操作</th>
                </tr>
                </thead>
                <tbody>
                <#list orderDTOPage.content as orderDTO>
                <tr>
                    <td>${orderDTO.orderId}</td>
                    <td>${orderDTO.buyerName}</td>
                    <td>${orderDTO.buyerPhone}</td>
                    <td>${orderDTO.buyerAddress}</td>
                    <td>${orderDTO.orderAmount}</td>
                    <td>${orderDTO.getOrderStatusEnum().getMessage()}</td>
                    <#--<td>支付方式</td>-->
                    <td>${orderDTO.getPayStatusEnum().getMessage()}</td>
                    <td>${orderDTO.createTime}</td>
                    <td>详情</td>
                    <td>取消</td>
                </tr>
                </#list>
                </tbody>
            </table>
        </div>
        <div class="col-md-12 column">
            <ul class="pagination">
                <#--小于等于1-->
                <#if currentPage lte 1>
                <li class="disabled"><a href="#">上一页</a></li>
                <#else>
                <li><a href="/sell/seller/order/list?page=${currentPage - 1}&size=${size}"">上一页</a></li>
                </#if>
                <#--从1到TotalPages-->
                <#list 1..orderDTOPage.getTotalPages() as index>
                    <#if currentPage == index>
                    <li class="disabled"><a href="#">${index}</a></li>
                    <#else>
                    <li><a href="/sell/seller/order/list?page=${index}&size=${size}">${index}</a></li>
                    </#if>
                </#list>
                <#--大于等于总页数-->
                <#if currentPage gte orderDTOPage.getTotalPages()>
                <li class="disabled"><a href="#">下一页</a></li>
                <#else>
                <li><a href="/sell/seller/order/list?page=${currentPage + 1}&size=${size}">下一页</a></li>
                </#if>
            </ul>
        </div>
    </div>
</div>
</body>
</html>