<<#import "part/common.ftl" as c>
<@c.nav>
<header class="masthead text-center text-white " style="background-image: url('assets/img/background.jpg');">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info" style="color: rgb(74,83,118)!important;">Регистрация</h2>
                <p>Введите свои данные</p>
            </div>
            <form method="post">
                <div class="form-group"><label for="username" style="color: rgb(74,83,118)">Имя
                    пользователя</label><input class="form-control item" type="text"
                                               placeholder="Введите имя пользователя" id="username" name="name"></div>
                <div class="form-group"><label for="email" style="color: rgb(74,83,118)">Email</label><input
                        class="form-control item" type="email" placeholder="Введите почту" id="email" name="email">
                </div>
                <div class="form-group"><label for="password" style="color: rgb(74,83,118)">Password</label><input
                        class="form-control" type="password" id="password" placeholder="Введите пароль" name="password">
                </div>
                <button class="btn btn-primary btn-block" type="submit" style="background: rgb(74,83,118);">
                    Зарегистрироваться
                </button>
                <a href="/signIn" style="color: rgb(74,83,118);margin-top: 200px;">Уже зарегистрированы? Войдите!</a>
            </form>
        </div>
    </section>
</header>
</@c.nav>