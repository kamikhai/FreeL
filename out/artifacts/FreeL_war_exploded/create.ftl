<#import "part/common.ftl" as c>
<@c.nav>
<header class="masthead text-center text-white " style="background-image: url('assets/img/create1.jpg');">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info" style="color: rgb(74,83,118)!important;">Создание проекта</h2>
                <p>Введите информацию о проекте</p>
            </div>
            <form method="post">
                <div class="form-group"><label for="name" style="color: rgb(74,83,118)">Название проекта</label><input
                            class="form-control item" type="text" placeholder="Введите название проекта" id="name"
                            name="name"></div>
                <div class="form-group"><label for="description" style="color: rgb(74,83,118)">Описание</label><textarea
                            class="form-control" id="description" name="description"
                            placeholder="Введите описание проекта"></textarea></div>
                <div class="form-group"><label for="github" style="color: rgb(74,83,118)">Ссылка на гитхаб</label><input
                            class="form-control item" type="text" placeholder="Ссылка на проект" id="github"
                            name="github"></div>
                <div class="form-group"><label for="cat" style="color: rgb(74,83,118)">Выберите категорию</label>
                    <select multiple="multiple" id="cat" class="form-control item" name="cat" size="5">
                        <#list categories as cat>
                        <option value="${cat.id}">${cat.name}</option>
                        </#list>
                    </select>
                </div>
                <button class="btn btn-primary btn-block" type="submit" style="background: rgb(74,83,118);">Сохранить
                </button>
            </form>
        </div>
    </section>
</header>
</@c.nav>