<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Корзина</h1>
    <hr>
    <div class="card-columns">
        <#list response as response>
            <a href="/product/${response.getProduct().id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">
                    <div class="card-top">
                        <form action="/my/responses/delete/${response.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                Удалить
                            </button>
                        </form>
                    </div>
                    <img src="/images/${response.getProduct().previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${response.getProduct().title}</h5>
                        <p class="card-text">${response.getProduct().price} ₽</p>
                        <p class="card-text">Откликнувшийся пользователь: ${response.getUser().name}</p>
                    </div>
                    <div class="card-footer">
                        ${response.getProduct().city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>