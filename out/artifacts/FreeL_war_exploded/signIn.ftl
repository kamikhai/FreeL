<#import "part/common.ftl" as c>
<@c.nav>
<header class="masthead text-center text-white " style="background-image: url('assets/img/background.jpg');">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info" style="color: rgb(74,83,118)!important;">Вход</h2>
                <p>Введите свои данные</p>
            </div>
            <form method="post">
                <p style="color: red">
                </p>
                <div class="form-group"><label for="email" style="color: rgb(74,83,118)">Email</label><input
                        class="form-control item" type="email" placeholder="Введите почту" id="email" name="email"
                        value="${email!"asd"}"></div>
                <div class="form-group"><label for="password" style="color: rgb(74,83,118)">Password</label><input
                        class="form-control" type="password" id="password" placeholder="Введите пароль" name="password">
                </div>
                <div class="form-group">
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="checkbox"><label
                            class="form-check-label" for="checkbox" style="color: rgb(74,83,118)">Remember me</label>
                    </div>
                </div>
                <button class="btn btn-primary btn-block" type="submit" style="background: rgb(74,83,118);">Войти
                </button>
                <a href="/signUp" style="color: rgb(74,83,118);margin-top: 200px;">Еще нет аккаунта?
                    Зарегистрируйтесь!</a></form>
        </div>
    </section>
</header>
</@c.nav>