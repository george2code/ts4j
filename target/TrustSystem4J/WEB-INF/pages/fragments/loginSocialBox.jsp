<%@ page contentType="text/html; charset=UTF-8" %>

<div class="panel panel-default pn-login-social">
  <div class="panel-body text-center">
    <h4>Присоеденяйтесь. Подключайтесь<br> к нам через социальные сети</h4>
    <ul class="social-icons-login">
      <li>
        <form method="post" action="/account/externallogin">
          <input type="hidden" value="--AoNDiJ01" name="__RequestVerificationToken">
          <button type="submit" class="vk" id="Vkontakte" name="provider" value="Vkontakte" title="Log in using your Vkontakte account">Войти "Vkontakte"</button>
        </form>
      </li>
      <li>
        <form method="post" action="/account/externallogin">
          <input type="hidden" value="ploTwC8Xu710Rznn9I4--LFnZIrPUMcKA--YZPo1" name="__RequestVerificationToken">
          <button type="submit" class="gl" id="Google" name="provider" value="Google" title="Log in using your Google account">Войти "Google+"</button>
        </form>
      </li>

      <li class="fb">
        <form method="post" action="/account/externallogin">
          <input type="hidden" value="" name="__RequestVerificationToken">
          <button type="submit" class="fb" id="Facebook" name="provider" value="Facebook" title="Log in using your Facebook account">Войти "Facebook"</button>
        </form>
      </li>
    </ul>
  </div>
</div>