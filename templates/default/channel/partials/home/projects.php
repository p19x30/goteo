<?php

$projects = $this->projects;


?>
<div id="channel-projects-promote" class="content_widget channel-projects rounded-corners" <?php if ($this->hide_promotes) : ?>style="display:none;"<?php endif; ?>>

    <h2 class="title"><?= $this->text('node-side-searcher-promote') ?>
    <span class="line"></span>
    </h2>

    <ul>
        <?php foreach ($promotes as $promo) {
            $project = $promo->projectData;
            $project->per_amount = round(($project->amount / $project->mincost) * 100);
            echo $this->insert('project/widget/horizontal_project', ['project' => $project]);
        }?>
    </ul>
</div>
