@component('mail::message')
# Your Post was Liked

x liked one of your post

@component('mail::button', ['url' => ''])
	View Post
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
