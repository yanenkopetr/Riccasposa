<?php if (!defined('ABSPATH')) die('No direct access allowed'); ?>
<span class="mdf_sort_panel">
    <span class="mdf_sort_panel_select">
        <select class="mdf_sort_panel_order_by">
            <option value="0"><?php _e("Default", 'wp-meta-data-filter-and-taxonomy-filter'); ?></option>
            <?php foreach ($settings as $value) : ?>
                <?php $value = explode('^', $value); ?>
                <option <?php selected($order_by, $value[0]) ?> value="<?php echo $value[0] ?>"><?php echo $value[1] ?></option>
            <?php endforeach; ?>
        </select>&nbsp;
        <select class="mdf_sort_panel_ordering">
            <option value="DESC" <?php selected($order, 'DESC') ?>><?php _e("descending", 'wp-meta-data-filter-and-taxonomy-filter'); ?></option>
            <option value="ASC" <?php selected($order, 'ASC') ?>><?php _e("ascending", 'wp-meta-data-filter-and-taxonomy-filter'); ?></option>
        </select>&nbsp;
    </span>
</span>

