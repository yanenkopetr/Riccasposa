<?php get_header(); ?>

<section class="section-done">
    <div class="container">
        <div class="done">
            <div class="h">Ошибка!<br>404</div>
            <div class="p">Запрашиваемая страница не найдена. Пожалуйста, вернитесь на предыдущую страницу или на главную. Спасибо!</div>
            <div class="button-wrapp">
                <a href="<?php echo home_url();?>" class="btn btn-border">На главную</a>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>