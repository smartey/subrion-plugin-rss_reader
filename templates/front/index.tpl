{if isset($rss_reader) && $rss_reader}
	{if isset($rss_reader.errors)}
		<div class="alert-error">{'<br>'|implode:$rss_reader.errors}</div>
	{/if}
	{if isset($rss_reader)}
		<div class="items-block">
		{foreach $rss_reader as $item}
			<div class="ia-item ia-item-bordered-bottom">
				<h5>
					<span class="fa fa-rss" style="color:orange;"></span> <a href="{$item.link}">{$item.title}</a>
				</h5>
				{if isset($item.description) && !empty($item.description)}
					<p class="ia-item-date">{$item.description|strip_tags|truncate:150:'...':false}</p>
				{/if}
			</div>
		{/foreach}
		</div>
	{/if}
{/if}