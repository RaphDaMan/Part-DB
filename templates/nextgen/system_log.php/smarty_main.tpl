{locale path="nextgen/locale" domain="partdb"}

<div class="panel panel-default">
    <div class="panel-heading">
            <a data-toggle="collapse" class="link-collapse text-default" href="#panel-filter"><i class="fa fa-filter fa-fw" aria-hidden="true"></i>
                {t}Filter{/t}
            </a>
        </div>
    <div class="panel-collapse collapse panel-body" id="panel-filter">
        <form class="form-horizontal no-progbar" method="post">
            <div class="form-group">
                <label class="col-md-2 control-label">{t}minimales Loglevel:{/t}</label>
                <div class="col-md-10">
                    <select name="min_level" class="form-control">
                        <option value="0" {if $min_level == 0}selected{/if}>Emergency</option>
                        <option value="1" {if $min_level == 1}selected{/if}>Alert</option>
                        <option value="2" {if $min_level == 2}selected{/if}>Critical</option>
                        <option value="3" {if $min_level == 3}selected{/if}>Error</option>
                        <option value="4" {if $min_level == 4}selected{/if}>Warning</option>
                        <option value="5" {if $min_level == 5}selected{/if}>Notice</option>
                        <option value="6" {if $min_level == 6}selected{/if}>Info</option>
                        <option value="7" {if $min_level == 7}selected{/if}>Debug</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Benutzer:{/t}</label>
                <div class="col-md-10">
                    <select name="filter_user" class="form-control selectpicker" data-live-search="true">
                        <option value="-1">{t}Kein Filter{/t}</option>
                        <optgroup label="{t}Benutzer{/t}">
                            {$user_list nofilter}
                        </optgroup>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Typ:{/t}</label>
                <div class="col-md-10">
                    <select name="filter_type" class="form-control selectpicker" data-live-search="true">
                        <option value="-1">{t}Kein Filter{/t}</option>
                        <optgroup label="{t}Typ{/t}">
                            {foreach $types_loop as $type}
                                <option value="{$type.id}" {if $filter_type == {$type.id}}selected{/if}>{$type.text}</option>
                            {/foreach}
                        </optgroup>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Suche in Kommentaren:{/t}</label>
                <div class="col-md-10">
                    <input type="search" value="{$search}" name="search" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <button class="btn btn-primary">{t}Aktualisieren{/t}</button>
                </div>
            </div>
        </form>
    </div>
</div>

<form method="get">
    <input type="hidden" name="page" value="1">

    {include "../smarty_pagination.tpl"}
</form>

<div class="panel panel-primary">
    <div class="panel-heading"><i class="fas fa-crosshairs fa-fw"></i>
        {t}Eventlog{/t}
    </div>
    {include file="../smarty_eventlog.tpl"}
</div>

<form method="get">
    <input type="hidden" name="page" value="1">

    {include "../smarty_pagination.tpl"}
</form>