<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <title>Coseat-competition for your seat</title>
</head>

<body ng-app="homePage" class="page-home">

<div class="wrap"> <!-- whole page  -->
  <div class="hero hero-home">
    <div class="main-menu"> <!--  메인 메뉴 -->
      <header class="container main-header">
        <div class="logo-heading">
          <a href="/">
            <div class="logo">
            <h1> Coseat Main</h1> <!-- 제목, 클릭시 메인페이지 링크예정 -->
              <img src="/assets/images/logo-white.svg?v=5935e1c" alt="Slido logo" class="logo-light" />
              <img src="/assets/images/logo-dark.svg?v=7568c71" alt="Slido logo" class="logo-dark" />
            </div>
          </a>
        </div>

        <nav class="navbar navbar-default p-top-1 p-bot-1" role="navigation">
          
<div class="navbar-header">
    <button id="1234" type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <div id="nav-icon">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </button>
</div>

<div id="collapse-mobile-menu" class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
        <li class="dropdown">
            <a id="features-btn" class="dropdown-button" role="button" aria-haspopup="false" aria-expanded="false" href="/features-questions">Product</a>
            <ul class="dropdown-menu text-left">
                <li>
                <li><span class="skf skf-question-buble-o"></span> <a href="/features-questions">Questions</a></li>
                <li><span class="skf skf-polls"></span> <a href="/features-polls">Polls</a></li>
                <li><div class="skf skf-ideas"></div> <a href="/features-ideas">Ideas</a></li>
                <li><span class="skf skf-analytics"></span> <a href="/features-analytics">Analytics</a></li>
                <li><span class="skf skf-integrations"></span> <a href="/features-integrations">Integrations</a></li>
                </li>
            </ul>
        </li>
        <li class="dropdown">
          <a id="customers-btn" class="dropdown-button" role="button" aria-haspopup="false" aria-expanded="false" href="/customer-stories">Customers</a>
          <ul class="dropdown-menu text-left">
              <li>
                <li id="customer-stories"><a href="/customer-stories">Customer Stories</a></li>
                <li id="use-cases"><a href="/use-cases/">Use Cases</a></li>
                <li id="enterprise"><a href="/enterprise?v=a">Enterprise</a></li>
              </li>
          </ul>
        </li>
        <li class="dropdown">
            <a id="pricing-btn" class="dropdown-button" role="button" aria-haspopup="false" aria-expanded="false" href="/pricing">Pricing</a>
            <ul class="dropdown-menu text-left">
                <li>
                  <li id="one-time-dropdown"><a href="/pricing/one-time">One-time plans</a></li>
                  <li id="annual-dropdown"><a href="/pricing/annual">Annual plans</a></li>
                  <li id="edu-dropdown"><a href="/pricing/edu">Teacher plans</a></li>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a id="resource-btn" class="dropdown-button hidden-xs" role="button" aria-haspopup="false" aria-expanded="false" href="#">Resources</a>
            <ul class="dropdown-menu text-left">
              <li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://blog.sli.do/">Blog</a></li>
                <li><a href="/videos">Videos</a></li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://webinar.sli.do/">Webinars</a></li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://resources.sli.do/">Documents</a></li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://help.sli.do">Help Center</a></li>
                <li><a href="/switcher">Switcher</a></li>
              </li>
            </ul>
        </li>
        <li class="visible-xs login-button-mobile"><a href="/admin/events" data-redirect="/admin/events" data-tracking="main-menu_log-in">Log in</a></li>
        <li class="visible-xs signup-button-mobile"><a href="/accounts/signup" data-redirect="/admin/events" data-tracking="main-menu_sign-up-now">Sign up</a></li>
    </ul>
</div>
        </nav>

        <div class="login-menu hidden-xs">
          <a href="/accounts/login" class="login-button" data-redirect="/admin/events">Log in</a>
          <a href="/accounts/signup" class="signup-button" data-redirect="/admin/events" data-tracking="main-menu_sign-up">Sign up</a>
        </div>
      </header>
    </div>

    
<script type="text/javascript">
  /**
   * search for eventcode from url hash
   */
  window.addEventListener('load', function() {
    if (document.location.hash && document.location.hash.length > 3) {
      var eventcode = document.location.hash.replace(/^[^\w\d\-\_]*/, '');
      $.ajax({
        'method': 'get',
        'contentType': 'application/json',
        'url': CONFIG.API_BASE_URL+'/events?code=' + encodeURIComponent(eventcode),
        'success': function (resp) {
          // found active events with eventcode
          if (resp && resp.length >= 1) {
            for (var i in resp) {
              var event = resp[i];
              // redirect to event if it's active +/- 1 day
              if (resp.length == 1 && Math.abs(event.out_of_date) <= 1) {
                window.stop ? window.stop() : document.execCommand('Stop');
                $(function () {
                  document.body.innerHTML = 'Redirecting to your event, please wait';
                });
                document.location.href = event.url.app;
                break;
              }
            }
          }
        },
        'complete': function () {
          $(function () {
            $('#eventValueMain').val(eventcode);
          });
        }
      });
    }
  })
</script>

    <div class="container">
      <div class="row play-video-row hidden-xs">
        <div class="col-md-12 text-center">
          <a data-play-video class="play-video" data-toggle="modal" data-target="#videoModal">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24">
            <path fill="#fff" d="M12 24c-6.619 0-12-5.381-12-12s5.381-12 12-12 12 5.381 12 12-5.381 12-12 12zM12 0.47c-6.36 0-11.53 5.17-11.53 11.53s5.17 11.53 11.53 11.53 11.53-5.17 11.53-11.53-5.17-11.53-11.53-11.53z"></path>
            <path fill="#fff" d="M9.797 15.998v-7.997l5.75 3.998-5.75 3.998zM10.31 8.986v6.034l4.339-3.014-4.339-3.019z"></path>
            </svg>
          </a>

          <!-- Modal -->
          <div class="modal modal--video fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-dialog--video" role="document">
              <div class="modal-content modal-content--video">
                <div class="modal-header modal-header--video">
                  <button type="button" class="close close--video" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body modal-body--video" id="slido-introduction-video">
                  <div class="flex-video widescreen">
                    <div id="playerMain">
                      <!-- This div will be replaced with iframe via YouTube API -->
                    </div>
                    <script type="text/javascript">
                      var videoId = 'j86dZLa4YJE';
                    </script>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row motto-row">
        <div class="col-md-12 text-center">
          <h1><span class="strong-heading">Every Question Matters<span class="green-dot-span">.</span></span></h1>
          <h3>The Ultimate Q&amp;A and Polling Platform for Company Meetings and Events</h3>
        </div>
      </div>

      <div class="scroll-container">
        <a href="#first-section">
          <span class="skf-chevron-down2 scroll-small-arrow"></span>
          <span class="skf-chevron-down2 scroll-big-arrow"></span>
        </a>
      </div>
    </div>
  </div>

  <div class="sticky-menu main-menu white-menu hidden-xs" id="sticky-features">
    <header class="container">
        <div class="sticky-menu__scroll-wrap">
          <button id="scroll-to-top" class="btn sticky-menu__scroll hidden-xs" data-tracking="sticky-menu">
            <span class="skf skf-arrow-up"></span>back to top
          </button>
        </div>

        <nav class="sticky-menu__navbar-wrap navbar navbar-default" role="navigation">
          
<div class="navbar-header">
    <button id="1234" type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <div id="nav-icon">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </button>
</div>

<div id="collapse-mobile-menu" class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
        <li class="dropdown">
            <a id="features-btn" class="dropdown-button" role="button" aria-haspopup="false" aria-expanded="false" href="/features-questions">Product</a>
            <ul class="dropdown-menu text-left">
                <li>
                <li><span class="skf skf-question-buble-o"></span> <a href="/features-questions">Questions</a></li>
                <li><span class="skf skf-polls"></span> <a href="/features-polls">Polls</a></li>
                <li><div class="skf skf-ideas"></div> <a href="/features-ideas">Ideas</a></li>
                <li><span class="skf skf-analytics"></span> <a href="/features-analytics">Analytics</a></li>
                <li><span class="skf skf-integrations"></span> <a href="/features-integrations">Integrations</a></li>
                </li>
            </ul>
        </li>
        <li class="dropdown">
          <a id="customers-btn" class="dropdown-button" role="button" aria-haspopup="false" aria-expanded="false" href="/customer-stories">Customers</a>
          <ul class="dropdown-menu text-left">
              <li>
                <li id="customer-stories"><a href="/customer-stories">Customer Stories</a></li>
                <li id="use-cases"><a href="/use-cases/">Use Cases</a></li>
                <li id="enterprise"><a href="/enterprise?v=a">Enterprise</a></li>
              </li>
          </ul>
        </li>
        <li class="dropdown">
            <a id="pricing-btn" class="dropdown-button" role="button" aria-haspopup="false" aria-expanded="false" href="/pricing">Pricing</a>
            <ul class="dropdown-menu text-left">
                <li>
                  <li id="one-time-dropdown"><a href="/pricing/one-time">One-time plans</a></li>
                  <li id="annual-dropdown"><a href="/pricing/annual">Annual plans</a></li>
                  <li id="edu-dropdown"><a href="/pricing/edu">Teacher plans</a></li>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a id="resource-btn" class="dropdown-button hidden-xs" role="button" aria-haspopup="false" aria-expanded="false" href="#">Resources</a>
            <ul class="dropdown-menu text-left">
              <li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://blog.sli.do/">Blog</a></li>
                <li><a href="/videos">Videos</a></li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://webinar.sli.do/">Webinars</a></li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://resources.sli.do/">Documents</a></li>
                <li><a target="_blank" rel="noopener noreferrer" href="https://help.sli.do">Help Center</a></li>
                <li><a href="/switcher">Switcher</a></li>
              </li>
            </ul>
        </li>
        <li class="visible-xs login-button-mobile"><a href="/admin/events" data-redirect="/admin/events" data-tracking="main-menu_log-in">Log in</a></li>
        <li class="visible-xs signup-button-mobile"><a href="/accounts/signup" data-redirect="/admin/events" data-tracking="main-menu_sign-up-now">Sign up</a></li>
    </ul>
</div>
        </nav>

        <div class="sticky-menu__login-wrap">
            <a href="/admin/events" class="btn btn-white text-uppercase sticky-menu__login" data-redirect="/admin/events">Log in</a>
            <a href="/accounts/signup" class="btn text-uppercase sticky-menu__signup" data-redirect="/admin/events" data-tracking="sticky-menu_sign-up">Sign up</a>
        </div>
    </header>
  </div>

  <div class="gray-bg">
    <section class="container" id="first-section" data-tracking="section_hp_customers">
      <div class="row flex-sm-middle">
        <div class="col-md-12">
          <img src="/assets/images/home/customers.svg?v=4c1454a" alt="Slido customers - Spotify, Coca-Cola, Booking.com, Lufthanasa, Volkswagen" class="logos__web m-top-2 m-bot-2 img-responsive hidden-xs" />
          <img src="/assets/images/home/customers-mobile.svg?v=b17f1cd" alt="Slido customers - Spotify, Coca-Cola, Booking.com, Lufthanasa, Volkswagen" class="logos__mobile  m-top-2 m-bot-2 img-responsive hidden-sm hidden-md hidden-lg" />
        </div>
      </div>
    </section>
  </div>

  <section class="container m-top-5 m-bot-7" data-tracking="section_hp_questions">
    <div class="row description-row flex-sm-middle">
      <div class="col-sm-12 text-center sr-appear">
        <h3>Perfect for high-performing teams as well as top events</h3>
      </div>
    </div>
    <div class="row card-list">
      <!-- 1  -->
      <div class="card-list__item col-lg-4 col-md-6 col-sm-6 sr-appear">
        <a class="card-link" href="/use-cases?uc=company-meetings" data-tracking="crossroads_learn-more_company-meetings">
          <div class="card-list-item card-list-item--crossroads item-shadow">
            <div class="card-list-item__img">
              <img src="/assets/images/index/cr_company-meetings.jpg?v=c71760f" alt="">
            </div>
            <div class="card-list-item__details">
              <h3 class="card-list-item__details-title text-center">For company meetings</h3>
              <p class="card-list-item__details-desc text-center text-desc">Keep your team aligned and productive with energizing<br> all-hands meetings</p>
              <div class="card-list-item__details-cta text-center">
                <span class="ico-cta-arrow">Learn more</span>
              </div>
            </div>
          </div>
        </a>
      </div>
      <!-- 2  -->
      <div class="card-list__item col-lg-4 col-md-6 col-sm-6 sr-appear-2">
        <a class="card-link" href="/use-cases?uc=team-meetings" data-tracking="crossroads_learn-more_team-meetings">
          <div class="card-list-item card-list-item--crossroads item-shadow">
            <div class="card-list-item__img">
              <img src="/assets/images/index/cr_team-meetings.jpg?v=16ea2f7" alt="">
            </div>
            <div class="card-list-item__details">
              <h3 class="card-list-item__details-title text-center">For team meetings</h3>
              <p class="card-list-item__details-desc text-center text-desc">Crowdsource and address the top<br> questions, concerns or <br>suggestions of your team.</p>
              <div class="card-list-item__details-cta text-center">
                <span class="ico-cta-arrow">Learn more</span>
              </div>
            </div>
          </div>
        </a>
      </div>
      <!-- 3  -->
      <div class="card-list__item col-lg-4 col-md-6 col-sm-6 sr-appear-3">
        <a class="card-link" href="/use-cases?uc=conferences" data-tracking="crossroads_learn-more_conferences">
          <div class="card-list-item card-list-item--crossroads item-shadow">
            <div class="card-list-item__img">
              <img src="/assets/images/index/cr_conferences.jpg?v=ae0b9b9" alt="">
            </div>
            <div class="card-list-item__details">
              <h3 class="card-list-item__details-title text-center">For conferences</h3>
              <p class="card-list-item__details-desc text-center text-desc">Empower your event participants<br> by involving them in the<br> conversation</p>
              <div class="card-list-item__details-cta text-center">
                <span class="ico-cta-arrow">Learn more</span>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </section>

  <div class="gray-bg">
    <section class="container content-section" data-tracking="section_hp_polls">
      <div class="row description-row flex-sm-middle">
        <div class="col-sm-6 col-sm-push-6 text-xs-center text-sm-left sr-appear">
          <h3>Crowdsource the best questions from your audience</h3>
          <p class="description-thought">
            Let your participants ask questions from any device<br class="visible-lg"> and vote for the ones they like the most.
          </p>
          <p class="description-thought">
            <strong>Use cases:</strong> <a class="gray-cta" href="/use-case-all-hands-ask-me-anything">All-hands</a>, <a class="gray-cta" href="/use-case-speakers-q-and-a">Conferences</a>, <a class="gray-cta" href="/use-case-remote-meetings">Remote meetings</a>
          </p>
          <div class="m-top-2 hidden-xs">
            <a href="/accounts/signup" data-redirect="/admin/events" data-tracking="questions_try-now"><button type="button" class="btn btn-sli text-uppercase">Get started</button></a>
            <br class="visible-xs">
            <a href="/features-questions" class="track--learn-more" data-tracking="questions_learn-more"><button type="button" class="btn btn-sli btn-trans btn-learn-more"><span class="trans-span">Learn more</span></button></a>
          </div>
        </div>
        <div class="m-top-2 visible-xs"></div>
        <div class="col-sm-6 col-sm-pull-6 text-center">
          <video class="video-live-preview hidden-xs" height="600" play-video-in-viewport="" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" poster="/assets/videos/thumbnails/questions-cover.jpg?v=8a0542e">
            <source src="/assets/videos/questions.webm?v=8000480" type="video/webm">
            Sorry, your browser does not support HTML5 video.
          </video>
          <img class="visible-xs" style="margin: 0 auto" src="/assets/images/questions-mobile.png?v=25155e9" alt="Crowdsource the best questions from your audience">
        </div>
      </div>
    </section>
  </div>

  <section class="container content-section" data-tracking="section_hp_analytics">
    <div class="row description-row flex-sm-middle">
      <div class="col-sm-4 text-xs-center text-sm-left sr-appear">
        <h3>Engage your audience with Live Polls</h3>
        <p class="description-thought">
          Ask your audience their opinion and <br class="visible-lg">display the results in real-time.
        </p>
        <p class="description-thought">
          <strong>Use cases</strong>: Conferences, Training sessions, Strategy meetings
        </p>
        <div class="m-top-2 hidden-xs">
          <a href="/accounts/signup" data-redirect="/admin/events" data-tracking="polls_try-now"><button type="button" class="btn btn-sli text-uppercase">Get started</button></a>
          <br class="visible-xs">
          <a href="/features-polls" class="track--learn-more" data-tracking="polls_learn-more"><button type="button" class="btn btn-sli btn-trans btn-learn-more"><span class="trans-span">Learn more</span></button></a>
        </div>
      </div>
      <div class="m-top-2 visible-xs"></div>
      <div class="col-sm-8 text-sm-left text-xs-center hidden-xs no-padding-lr">
        <video class="video-live-preview" play-video-in-viewport="" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" poster="/assets/videos/thumbnails/polls-cover.jpg?v=2bfeb7d">
          <source src="/assets/videos/polls-video.webm?v=bdcb52b" type="video/webm">
          <source src="/assets/videos/polls.mp4?v=5d80d37" type="video/mp4">
        </video>
      </div>
      <div class="col-xs-12 text-center visible-xs">
        <img src="/assets/images/polls-mobile.png?v=c977860" alt="Your audience can participate in live polls using our app" />
      </div>
    </div>
  </section>

  <div class="gray-bg">
    <section class="container content-section" data-tracking="section_hp_integrations">
      <div class="row description-row flex-sm-middle">
        <div class="col-sm-4 col-sm-push-8 text-xs-center text-sm-left sr-appear">
          <h3>Run effective<br class="visible-lg"> brainstorming sessions</h3>
          <p class="description-thought">
            Capture the best ideas from your team members on anything from your company strategy to the agenda for your next offsite.
          </p>
          <p class="description-thought">
            <strong>Use cases</strong>: Team meetings, Roundtable discussions, Workshops
          </p>
          <div class="m-top-2 hidden-xs">
            <a href="/accounts/signup" data-redirect="/admin/events" data-tracking="ideas_try-now"><button type="button" class="btn btn-sli text-uppercase">Get started</button></a>
            <br class="visible-xs">
            <a href="/features-ideas" class="track--learn-more" data-tracking="ideas_learn-more"><button type="button" class="btn btn-sli btn-trans btn-learn-more"><span class="trans-span">Learn more</span></button></a>
          </div>
        </div>
        <div class="m-top-2 visible-xs"></div>
        <div class="col-sm-8 col-sm-pull-4 text-center">
          <img src="/assets/images/features/ideas/ideas-hero.png?v=7192f01" alt="Run effective brainstorming sessions" class="limit-xs-height" />
        </div>
      </div>
    </section>
  </div>

  <section class="container content-section" data-tracking="section_hp_integrations">
    <div class="row description-row flex-sm-middle">
      <div class="col-sm-6 text-xs-center text-sm-left sr-appear">
        <h3>Gain valuable insights<br class="visible-lg"> with event analytics</h3>
        <p class="description-thought">
          Meet your most influential participants and discover<br class="visible-lg"> which topics resonated the most with your audience
        </p>
        <div class="m-top-2 hidden-xs">
          <a href="/accounts/signup" data-redirect="/admin/events" data-tracking="analytics_try-now"><button type="button" class="btn btn-sli text-uppercase">Get started</button></a>
          <br class="visible-xs">
          <a href="/features-analytics" class="track--learn-more" data-tracking="analytics_learn-more"><button type="button" class="btn btn-sli btn-trans btn-learn-more"><span class="trans-span">Learn more</span></button></a>
        </div>
      </div>
      <div class="m-top-2 visible-xs"></div>
      <div class="col-sm-6 text-center">
        <img src="/assets/images/features/analytics/mac.png?v=d5654f8" alt="Let audience ask questions through our app" class="limit-xs-height" />
      </div>
    </div>
  </section>

  <div class="gray-bg">
    <section class="container content-section">
      <div class="row description-row flex-sm-middle">
        <div class="col-sm-12 text-center sr-appear">
          <h3>Make your event experience seamless <br class="visible-lg"> with our integrations</h3>
          <p class="description-thought text-center">
            Easily integrate Slido with other platforms to enhance the engagement of your event or meeting
          </p>
        </div>
      </div>
      <div class="row card-list">
        <!-- 1  -->
        <div class="card-list__item col-lg-4 col-md-6 col-sm-6 sr-appear">
          <a class="card-link" href="/switcher" data-tracking="integration_learn-more_switcher">
            <div class="card-list-item item-shadow">
              <div class="integration-list-item__img">
                <img src="/assets/images/index/switcher.svg?v=032a632" alt="">
              </div>
              <div class="card-list-item__details">
                <h3 class="card-list-item__details-title text-center">Slido Switcher</h3>
                <p class="card-list-item__details-desc text-center text-desc">Whether you use PowerPoint, Keynote or Prezi, our Switcher app allows you to seamlessly switch between your slides and Slido.</p>
                <div class="card-list-item__details-cta text-center">
                  <span class="ico-cta-arrow">Learn more</span>
                </div>
              </div>
            </div>
          </a>
        </div>
        <!-- 2  -->
        <div class="card-list__item col-lg-4 col-md-6 col-sm-6 sr-appear-2">
          <a class="card-link" href="/slack-integration" data-tracking="integration_learn-more_slack">
            <div class="card-list-item item-shadow">
              <div class="integration-list-item__img">
                <img src="/assets/images/index/slack.svg?v=9a31dcd" alt="">
              </div>
              <div class="card-list-item__details">
                <h3 class="card-list-item__details-title text-center">Slack</h3>
                <p class="card-list-item__details-desc text-center text-desc">Involve your employees in the conversation by letting them ask questions and send ideas<br class="visible-lg visible-md"> in Slack.</p>
                <div class="card-list-item__details-cta text-center">
                  <span class="ico-cta-arrow">Learn more</span>
                </div>
              </div>
            </div>
          </a>
        </div>
        <!-- 3  -->
        <div class="card-list__item col-lg-4 col-md-6 col-sm-6 sr-appear-3">
          <a class="card-link" href="/features-livestream" data-tracking="integration_learn-more_live-video">
            <div class="card-list-item item-shadow">
              <div class="integration-list-item__img">
                <img src="/assets/images/index/live-video.svg?v=6f01beb" alt="">
              </div>
              <div class="card-list-item__details">
                <h3 class="card-list-item__details-title text-center">Live video</h3>
                <p class="card-list-item__details-desc text-center text-desc">Embed live video and Slido<br class="visible-lg visible-md"> side by side on your website<br class="visible-lg visible-md"> or place the live stream <br class="visible-lg visible-md">directly into Slido.</p>
                <div class="card-list-item__details-cta text-center">
                  <span class="ico-cta-arrow">Learn more</span>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center m-top-2">
          <a href="/features-integrations">
            <button type="button" class="btn btn-sli btn-trans" data-tracking="integrations_explore-other">
              <span class="trans-span">Explore other integrations</span>
            </button>
          </a>
        </div>
      </div>
    </section>
  </div>

  <section class="container content-section" data-tracking="section_hp_client-stories">
    <div class="container">
      <div class="row description-row">
        <div class="col-md-12 text-center sr-appear">
          <h3>Thousands of satisfied customers</h3>
          <p class="description-thought">
            We are honored to work with some of the most innovative and inspiring companies.
          </p>
        </div>
      </div>
      <div class="row m-top-3 no-gutters">
        <div id="lp-carousel" class="lp-carousel">
          <!-- 1 item -->
          <div class="lp-item lp-item--1 col-md-12 no-padding-lr">
              <!-- card 2col--video -->
              <div class="col-lg-6 col-md-12 col-sm-12 no-padding-lr">
                <a class="yt-link" data-toggle="modal" data-target="#videoUrlModal" data-video="xRfVz3YoF_Q">
                  <div class="card-list-item card-list-item--lp lp-item__01 lp-item__2col item-shadow">
                    <div class="card-list-item__desc">
                      <div class="yt">
                        <div class="yt-play yt-play--green yt-play--medium yt-play--2col yt-play--2col--lp"><!-- play icon --></div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              <!-- card 2col--text -->
              <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="lp-item__desc">
                  <div class="lp-item__desc--row">
                    <img class="lp-item--logo" src="/assets/images/lp/fom-logo.png?v=41d18ba" alt="festival of marketing logo">
                  </div>
                  <div class="lp-item__desc--row lp-item--quote">
                    <p class="text-center text-quote fs24">“By using Slido, we went from being able to ask 2 or 3 questions to a hundred.”</p>
                  </div>
                  <div class="lp-item__desc--row lp-item--meta-info fs14">
                    <span class="fw500">Chris Chapman</span>, Director
                  </div>
                </div>
              </div>
          </div>
          <!-- 2 item -->
          <div class="lp-item lp-item--2 col-md-12 no-padding-lr">
              <!-- card 2col--video -->
              <div class="col-lg-6 col-md-12 col-sm-12 no-padding-lr">
                <div class="card-list-item card-list-item--lp lp-item__02 lp-item__2col item-shadow">
                  <div class="card-list-item__desc">
                  </div>
                </div>
              </div>
              <!-- card 2col--text -->
              <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="lp-item__desc">
                  <div class="lp-item__desc--row">
                    <img class="lp-item--logo" src="/assets/images/customer-stories/logos/ttc.svg?v=65ae6b7" alt="Toronto Transit Commission logo" style="height: 30px; width: 76px;">
                  </div>
                  <div class="lp-item__desc--row lp-item--quote">
                    <p class="text-center text-quote fs24">“We wanted a tool that would increase engagement of the employees in the room and Slido did that for us, even more than we expected it to.”</p>
                    <a href="/customer-story-ttc-employee-engagement-leadership-meetings" class="track--learn-more" data-tracking="customer-story-ttc_learn-more"><span class="ico-cta-arrow fw500">Read Customer Story</span></a>
                  </div>
                  <div class="lp-item__desc--row lp-item--meta-info fs14">
                    <span class="fw500">Jessica Kosmack</span>, Senior Communications Specialist
                  </div>
                </div>
              </div>
          </div>
          <!-- 3 item -->
          <div class="lp-item lp-item--3 col-md-12 no-padding-lr">
              <!-- card 2col--video -->
              <div class="col-lg-6 col-md-12 col-sm-12 no-padding-lr">
                <a class="yt-link" data-toggle="modal" data-target="#videoUrlModal" data-video="J_NZdegWa5w">
                  <div class="card-list-item card-list-item--lp lp-item__03 lp-item__2col item-shadow">
                    <div class="card-list-item__desc">
                      <div class="yt">
                        <div class="yt-play yt-play--green yt-play--medium yt-play--2col yt-play--2col--lp"><!-- play icon --></div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              <!-- card 2col--text -->
              <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="lp-item__desc">
                  <div class="lp-item__desc--row">
                    <img class="lp-item--logo" src="/assets/images/lp/swiss-re-logo.png?v=be1e100" alt="Swiss re logo">
                  </div>
                  <div class="lp-item__desc--row lp-item--quote">
                    <p class="text-center text-quote fs24">“By integrating Slido, we created a two-way communication channel where we can build up trust and engage our people.”</p>
                  </div>
                  <div class="lp-item__desc--row lp-item--meta-info fs14">
                    <span class="fw500">Jan Mikulas</span>, Community Engagement Manager
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div><!-- .row -->
      <div class="row">
        <div class="col-md-12">
          <div class="lp-carousel customNavigation">
            <a class="cs-btn lp-prev slick-arrow"><img src="/assets/images/icons/arrow-left.svg?v=490d94d" alt="previous"></a>
            <a class="cs-btn lp-next slick-arrow"><img src="/assets/images/icons/arrow-right.svg?v=3492e59" alt="next"></a>
          </div>
        </div>
      </div><!-- .row -->
      <div class="row">
        <div class="m-top-2 visible-xs"></div>
        <div class="col-md-12">
          <img src="/assets/images/home/customers_large.svg?v=a7886f5" alt="Customers - Zendesk, BBC, Vodafone, Dell and many more" class="m-top-2 img-responsive hidden-xs" />
          <img src="/assets/images/home/customers_large-mobile.svg?v=4ad2f8b" alt="Customers - Zendesk, BBC, Vodafone, Dell and many more" class="m-top-2 img-responsive img-responsive-limit hidden-sm hidden-md hidden-lg" />
        </div>
        <div class="col-md-12 text-center m-top-4">
          <a href="/customer-stories" class="track--learn-more" data-tracking="customer-stories_learn-more">
            <button type="button" class="btn btn-sli btn-trans">
              <span class="trans-span">See customer stories</span>
            </button>
          </a>
        </div>
      </div><!-- .row -->
    </div>
  </section>

    <div class="gray-line-top"></div>

    <div class="wrapper-footer">

  <div class="container-fluid">

    <div class="row no-gutters">

      <div class="col-md-12 no-padding">
        <footer class="site-footer" id="colophon">
          <!-- main footer links -->
          <div class="footer__content">
            <div class="footer__navigation">
                <!-- product -->
                <div class="footer__links-holder">
                  <h6>Product</h6>
                  <ul class="footer__links">
                    <li><a href="/features-questions">Questions</a></li>
                    <li><a href="/features-polls">Polls</a></li>
                    <li><a href="/features-ideas">Ideas</a></li>
                    <li><a href="/features-analytics">Analytics</a></li>
                    <li><a href="/features-integrations">Integrations</a></li>
                  </ul>
                </div>
                <!-- use cases -->
                <div class="footer__links-holder">
                  <h6>Customers</h6>
                  <ul class="footer__links">
                    <li><a href="/customer-stories">Customer Stories</a></li>
                    <li><a href="/use-cases">Use Cases</a></li>
                    <li><a href="/enterprise?v=a">Enterprise</a></li>
                  </ul>
                </div>
                <!-- pricing -->
                <div class="footer__links-holder">
                  <h6>Pricing</h6>
                  <ul class="footer__links">
                    <li><a href="/pricing?plan=one-time">One-time Plans</a></li>
                    <li><a href="/pricing?plan=annual">Annual Plans</a></li>
                    <li><a href="/pricing?plan=edu">Teacher Plans</a></li>
                  </ul>
                </div>
                <!-- resources -->
                <div class="footer__links-holder">
                  <h6>Resources</h6>
                  <ul class="footer__links">
                    <li><a href="https://blog.sli.do/" rel="noopener noreferrer nofollow">Blog</a></li>
                    <li><a href="/videos">Videos</a></li>
                    <li><a href="https://webinar.sli.do/" rel="noopener noreferrer nofollow">Webinars</a></li>
                    <li><a href="https://resources.sli.do/" rel="noopener noreferrer nofollow">Documents</a></li>
                    <li><a href="https://help.sli.do/" target="_blank" rel="noopener noreferrer nofollow">Help Center</a></li>
                    <li><a href="/switcher">Switcher</a></li>
                  </ul>
                </div>
                <!-- company -->
                <div class="footer__links-holder">
                  <h6>Company</h6>
                  <ul class="footer__links">
                    <li><a href="/about">About Us</a></li>
                    <li><a href="/careers">Careers</a></li>
                    <li><a href="https://events.sli.do/" rel="noopener noreferrer nofollow">Events</a></li>
                    <li><a href="/security">Security</a></li>
                    <li><a href="/contact">Contact Us</a></li>
                    <li><a href="/terms">Terms of Service</a></li>
                  </ul>
                </div>
            </div>
            <div class="footer__contact">
              <div class="footer__contact--logo">
                <a href="/"><img class="logo" src="/assets/images/logo-dark.svg?v=7568c71" alt="Slido logo"/> <!-- Slido Logo --></a>
              </div>
              <ul class="footer__links">
                <li><div class="footer__contact--copy"><span class="fw700">Get in touch with us</span></div></li>
                <li><div class="footer__contact--phone"><a href="tel:+1-650-489-9485" rel="noopener noreferrer nofollow">+1&nbsp;650&nbsp;489&nbsp;9485</a></div></li>
                <li><div class="footer__contact--email"><a href="mailto:support@slido.com" rel="noopener noreferrer nofollow"><p>support@slido.com</p></a></div></li>
              </ul>
              <div class="footer__contact--social">
                <!-- fb -->
                <a href="https://www.facebook.com/slidoapp" class="footer__contact--social-facebook" target="_blank" rel="noopener noreferrer nofollow">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                  width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
                  <path class="media-icon" fill="#999999" d="M17,2h0V6H15c-.69,0-1,.81-1,1.5V10h3v4H14v8H10V14H7V10h3V6a4,4,0,0,1,4-4Z"/>
                  </svg>
                </a>
                <!-- twitter -->
                <a href="https://twitter.com/slidoapp" class="footer__contact--social-twitter" target="_blank" rel="noopener noreferrer nofollow">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                  width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
                    <path class="media-icon" fill="#999999" d="M22.46,6A8.568,8.568,0,0,1,20,6.69a4.3,4.3,0,0,0,1.88-2.38,8.641,8.641,0,0,1-2.72,1.05A4.225,4.225,0,0,0,16,4a4.285,4.285,0,0,0-4.27,4.29,4.459,4.459,0,0,0,.11.98A12.194,12.194,0,0,1,3,4.79,4.273,4.273,0,0,0,4.33,10.5,4.243,4.243,0,0,1,2.38,10v.03a4.293,4.293,0,0,0,3.44,4.21,4.206,4.206,0,0,1-1.93.07,4.28,4.28,0,0,0,4,2.98,8.521,8.521,0,0,1-5.33,1.84,8.722,8.722,0,0,1-1.02-.06A12.144,12.144,0,0,0,8.12,21,12.136,12.136,0,0,0,20.33,8.79c0-.19,0-.37-.01-.56A8.572,8.572,0,0,0,22.46,6Z"/>
                  </svg>
                </a>
                <!-- linkedin -->
                <a href="https://www.linkedin.com/company/slido" class="footer__contact--social-linkedin" target="_blank" rel="noopener noreferrer nofollow">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
                    <path class="media-icon" fill="#999999" d="M21,21H17V14.25a2.247,2.247,0,0,0-2.25-1.94A1.8,1.8,0,0,0,13,14.25V21H9V9h4v2a4.586,4.586,0,0,1,3.5-1.76A4.509,4.509,0,0,1,21,13.75V21M7,21H3V9H7V21M5,3A2,2,0,1,1,3,5,2,2,0,0,1,5,3Z"/>
                  </svg>
                </a>
                <!-- youtube -->
                <a href="http://www.youtube.com/user/slidoapp" class="footer__contact--social-youtube" target="_blank" rel="noopener noreferrer nofollow">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
                    <path class="media-icon" fill="#999999" d="M10,16.5v-9L16,12m4-7.6A55.361,55.361,0,0,0,12,4a58.24,58.24,0,0,0-8,.38C2.44,4.9,2,8.4,2,12s.44,7.1,2,7.61A55.958,55.958,0,0,0,12,20a55.958,55.958,0,0,0,8-.39c1.56-.51,2-4.02,2-7.61S21.56,4.91,20,4.4Z"/></svg>
                </a>
                <!-- instagram -->
                <a href="https://www.instagram.com/slidoapp/" class="footer__contact--social-instagram" target="_blank" rel="noopener noreferrer nofollow">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
                    <path class="media-icon" fill="#999999" d="M7.8,2h8.4A5.8,5.8,0,0,1,22,7.8v8.4A5.8,5.8,0,0,1,16.2,22H7.8A5.8,5.8,0,0,1,2,16.2V7.8A5.8,5.8,0,0,1,7.8,2M7.6,4A3.6,3.6,0,0,0,4,7.6v8.8A3.6,3.6,0,0,0,7.6,20h8.8A3.6,3.6,0,0,0,20,16.4V7.6A3.6,3.6,0,0,0,16.4,4H7.6m9.65,1.5A1.25,1.25,0,1,1,16,6.75,1.25,1.25,0,0,1,17.25,5.5M12,7a5,5,0,1,1-5,5,5,5,0,0,1,5-5m0,2a3,3,0,1,0,3,3,3,3,0,0,0-3-3Z"/>
                  </svg>
                </a>
              </div>
            </div>
          </div>
          <!-- footer-bar -->
          <div class="footer__bar__wrap">
            <div class="row no-gutters footer__bar">
              <div class="col-lg-4 col-md-12 footer__bar--copy">
                <p class="gray-600">©  All rights reserved • 2012 - 2019 Slido.com</p>
              </div>
              <div class="col-lg-8 col-md-12 footer__bar--links">
                <ul>
                  <li><a href="/terms#privacy-policy">Privacy Policy</a></li>
                  <li><a href="https://status.slido.com/" target="_blank" rel="noopener noreferrer nofollow">Status Page</a></li>
                  <li><a href="#" class="privacy-manager-trigger">Privacy Preferences</a></li>
                </ul>
              </div>
            </div>
          </div>
        </footer><!-- #colophon -->

      </div><!--col end -->

    </div><!-- row end -->

  </div><!-- container end -->

</div><!-- wrapper end -->

  </div>
  <script type="text/javascript" src="/build/js/scripts.min.js?v=cefd2d0" defer></script>
  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"d71807e309","applicationID":"211290555","transactionName":"bwNRZRZZWEJUU0BfW1ZJZkMNF19fUVVMGERQFg==","queueTime":0,"applicationTime":2,"atts":"Q0RSE15DS0w=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
