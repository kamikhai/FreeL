<#import "part/common.ftl" as c>
<#import "part/main.ftl" as m>
<@c.nav>
    <header class="masthead text-center text-white d-flex" style="background-image:url('assets/img/header.jpg');">
        <div class="container my-auto">
            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <h1 class="text-uppercase"><strong>Миллионы идей ждут вас</strong></h1>
                    <hr style="border-color: rgb(74,83,118);">
                </div>
            </div>
            <div class="col-lg-8 mx-auto">
                <p class="text-faded mb-5">&nbsp;Портал для организации свободных групп разработчиков, целью
                    которых&nbsp;<br>является реализация open-source проекта.</p>
                <a class="btn btn-primary btn-xl js-scroll-trigger" role="button" href="/create"
                   style="background-color: rgb(74,83,118);">Создать свой проект</a></div>
        </div>
    </header>
    <section id="about" class="bg-primary" style="background-color: rgb(74,83,118)!important;">
        <div class="container">
            <div class="row">
                <div class="col offset-lg-8 mx-auto text-center">
                    <h2 class="text-white section-heading">У нас есть все, что вам нужно!</h2>
                    <hr class="light my-4">
                    <p class="text-faded mb-4">На данном сайте вы можете найти людей не только для создания нового
                        проекта,
                        но и для завершения старого</p><a class="btn btn-light btn-xl js-scroll-trigger" role="button"
                                                          href="#services">Начать!</a></div>
            </div>
        </div>
    </section>
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Возможности сайта</h2>
                    <hr class="my-4" style="border-color: rgb(74,83,118)!important;">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <@m.opportunity header="Создавайте собственные проекты" description="Вы можете найти людей, которые помогут реализовать вашу идею" delay="0" icon="desktop"></@m.opportunity>
                <@m.opportunity header="Участвуйте в готовых проектах" description="Вы можете сами принять участи в создание чего-либо проекта" delay="200" icon="search"></@m.opportunity>
                <@m.opportunity header="Обучайтесь" description="Вы можете собрать команду, вместе с который не только создадите готовый
                            продукт, но и научитесь всему необходимому для реализации вашей идеи" delay="400" icon="mortar-board"></@m.opportunity>
                <@m.opportunity header="Находите союзников по всей стране" description="Вы можете собрать команду с разных уголков страны" delay="600" icon="users"></@m.opportunity>
            </div>
        </div>
    </section>
    <section id="portfolio" class="p-0">
        <div class="container-fluid p-0">
            <div class="row no-gutters popup-gallery">

                <@m.portfolio src="assets/img/thumbnails/1.jpg" name="Веб-разработка"></@m.portfolio>
                <@m.portfolio src="assets/img/thumbnails/2.jpg" name="Мобильная разработка"></@m.portfolio>
                <@m.portfolio src="assets/img/thumbnails/3.jpg" name="Разработка игр"></@m.portfolio>
                <@m.portfolio src="assets/img/thumbnails/4.jpg" name="Системное администрирование"></@m.portfolio>
                <@m.portfolio src="assets/img/thumbnails/5.jpg" name="Администрирование баз данных"></@m.portfolio>
                <@m.portfolio src="assets/img/thumbnails/6.jpg" name="Тестирование"></@m.portfolio>

            </div>
        </div>
    </section>
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto text-center">
                    <h2 class="section-heading">Вы можете связаться с нами!</h2>
                    <hr class="my-4" style="border-color: rgb(74,83,118)!important;">
                    <p class="mb-5">Есть какие-то предложения? Прекрасно! Свяжитесь с нами</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 ml-auto text-center"><i class="fa fa-phone fa-3x mb-3 sr-contact"
                                                             data-aos="zoom-in"
                                                             data-aos-duration="300" data-aos-once="true"></i>
                    <p>8-800-555-3535</p>
                </div>
                <div class="col-lg-4 mr-auto text-center"><i class="fa fa-envelope-o fa-3x mb-3 sr-contact"
                                                             data-aos="zoom-in" data-aos-duration="300"
                                                             data-aos-delay="300"
                                                             data-aos-once="true"></i>
                    <p><a href="mailto:kamilla-h@bk.ru" style="color: rgb(74,83,118)!important;">kamilla-h@bk.ru</a></p>
                </div>
            </div>
        </div>
    </section>
    <script src="assets/js/bs-animation.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
</@c.nav>
