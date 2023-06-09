<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en"
      dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Signup</title>

        <!-- Custom Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500%7CRoboto:400,500&display=swap"
              rel="stylesheet">

        <!-- Perfect Scrollbar -->
        <link type="text/css"
              href="assets/vendor/perfect-scrollbar.css"
              rel="stylesheet">

        <!-- Material Design Icons -->
        <link type="text/css"
              href="assets/css/material-icons.css"
              rel="stylesheet">

        <!-- Font Awesome Icons -->
        <link type="text/css"
              href="assets/css/fontawesome.css"
              rel="stylesheet">

        <!-- Preloader -->
        <link type="text/css"
              href="assets/vendor/spinkit.css"
              rel="stylesheet">

        <!-- App CSS -->
        <link type="text/css"
              href="assets/css/app.css"
              rel="stylesheet">

    </head>

    <body class="login">

        <div class="d-flex align-items-center"
             style="min-height: 100vh">
            <div class="col-sm-8 col-md-6 col-lg-4 mx-auto"
                 style="min-width: 300px;">
                <div class="d-flex justify-content-center mb-5 navbar-light">
                    <!-- Brand -->
                    <a href="Home"
                       class="navbar-brand m-0">
                        QuizPractice
                    </a>
                </div>


                <div class="card navbar-shadow">
                    <div class="card-header text-center">
                        <h4 class="card-title">Sign Up</h4>
                        <p class="card-subtitle">Create a new account</p>
                    </div>

                    <!--Body-->
                    <div class="card-body">
                        <form action="VerifyUser"
                              method="post">

                            <!--Name-->
                            <div class="form-group">
                                <label class="form-label"
                                       for="name">Name:</label>
                                <div class="input-group input-group-merge">
                                    <input id="name"
                                           type="text"
                                           required
                                           name="user_name"
                                           class="form-control form-control-prepended"
                                           placeholder="Your first and last name">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-user"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Email-->
                            <div class="form-group">
                                <label class="form-label"
                                       for="email">Email address:</label>
                                <div class="input-group input-group-merge">
                                    <input id="email"
                                           name="email"
                                           type="email"
                                           required
                                           class="form-control form-control-prepended"
                                           placeholder="Your email address">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-envelope"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Password-->
                            <div class="form-group">
                                <label class="form-label"
                                       for="password">Password:</label>
                                <div class="input-group input-group-merge">
                                    <input id="password"
                                           type="password"
                                           required
                                           name="password"
                                           class="form-control form-control-prepended"
                                           placeholder="Choose a password"
                                           minlength="6"
                                           maxlength="32">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-key"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Confirm-->
                            <div class="form-group">
                                <label class="form-label"
                                       for="password2">Re-Enter Password:</label>
                                <div class="input-group input-group-merge">
                                    <input id="password2"
                                           type="password"
                                           required
                                           name="re_password"
                                           class="form-control form-control-prepended"
                                           placeholder="Confirm password"
                                           minlength="6"
                                           maxlength="32">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-key"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div style="color: red">${requestScope.message1}</div>
                            <div style="color: red">${requestScope.message2}</div>
                            <br/>
                            <!--Submit-->
                              <div class="form-group text-center mb-0">
                                <div class="custom-control custom-checkbox">
                                    <input id="terms"
                                           type="checkbox"
                                           class="custom-control-input"
                                           checked
                                           required value="submit" onclick="if(!this.form.checkbox.checked){alert('You must agree to the terms first.');return false}">
                                    <label for="terms"
                                           class="custom-control-label text-black-70">I agree to the <a data-toggle="modal" href="#modal">Terms of Use</a></label>                         
                                </div>
                            </div><br/>
                            <button type="submit"
                                    class="btn btn-primary btn-block mb-3">Sign Up</button>
                            
                        </form>
                    </div>
                    <div class="card-footer text-center text-black-50">Already signed up? <a href="Login.jsp">Login</a></div>
                </div>
            </div>
        </div>
                            
        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Terms of use</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">                        

                        <div class=WordSection1>

                            <p class=MsoNormal style='line-height:115%'><span style='font-size:6.0pt;
                                                                              line-height:115%;font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_a7mwfgcrtsqn"></a><span
                                    style='font-size:16.0pt;line-height:150%'>AGREEMENT TO TERMS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>These Terms of Use constitute a legally binding
                                    agreement made between you, whether personally or on behalf of an entity
                                    (?you?) and [business entity name]<b style='mso-bidi-font-weight:normal'> </b>(?we,?
                                    ?us? or ?our?), concerning your access to and use of the [website name.com]
                                    website as well as any other media form, media channel, mobile website or
                                    mobile application related, linked, or otherwise connected thereto
                                    (collectively, the ?Site?). <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You agree that by accessing the Site, you have
                                    read, understood, and agree to be bound by all of these Terms of Use. If you do
                                    not agree with all of these Terms of Use, then you are expressly prohibited
                                    from using the Site and you must discontinue use immediately.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Supplemental Terms of Use or documents that may
                                    be posted on the Site from time to time are hereby expressly incorporated
                                    herein by reference. We reserve the right, in our sole discretion, to make
                                    changes or modifications to these Terms of Use at any time and for any reason. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We will alert you about any changes by updating
                                    the ?Last updated? date of these Terms of Use, and you waive any right to
                                    receive specific notice of each such change. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>It is your responsibility to periodically review
                                    these Terms of Use to stay informed of updates. You will be subject to, and
                                    will be deemed to have been made aware of and to have accepted, the changes in
                                    any revised Terms of Use by your continued use of the Site after the date such
                                    revised Terms of Use are posted. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The information provided on the Site is not
                                    intended for distribution to or use by any person or entity in any jurisdiction
                                    or country where such distribution or use would be contrary to law or
                                    regulation or which would subject us to any registration requirement within
                                    such jurisdiction or country. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Accordingly, those persons who choose to access
                                    the Site from other locations do so on their own initiative and are solely
                                    responsible for compliance with local laws, if and to the extent local laws are
                                    applicable.&nbsp;<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>These </span><a
                                                                              href="https://termly.io/resources/templates/terms-of-use-template/"><span
                                        style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>terms of
                                        use</span></a><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                                    Arial'> were<span style='color:windowtext'> created using Termly.<o:p></o:p></span></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Option 1: The Site is intended for users who are
                                    at least 18 years old. Persons under the age of 18 are not permitted to
                                    register for the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Option 2: [The Site is intended for users who
                                    are at least 13 years of age.] All users who are minors in the jurisdiction in
                                    which they reside (generally under the age of 18) must have the permission of,
                                    and be directly supervised by, their parent or guardian to use the Site. If you
                                    are a minor, you must have your parent or guardian read and agree to these Terms
                                    of Use prior to you using the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_4rd71iod99ud"></a><span
                                    style='font-size:16.0pt;line-height:150%'>INTELLECTUAL PROPERTY RIGHTS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Unless otherwise indicated, the Site is our
                                    proprietary property and all source code, databases, functionality, software,
                                    website designs, audio, video, text, photographs, and graphics on the Site
                                    (collectively, the ?Content?) and the trademarks, service marks, and logos
                                    contained therein (the ?Marks?) are owned or controlled by us or licensed to
                                    us, and are protected by copyright and trademark laws and various other
                                    intellectual property rights and unfair competition laws of the United States,
                                    foreign jurisdictions, and international conventions. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The Content and the Marks are provided on the
                                    Site ?AS IS? for your information and personal use only. Except as expressly
                                    provided in these Terms of Use, no part of the Site and no Content or Marks may
                                    be copied, reproduced, aggregated, republished, uploaded, posted, publicly displayed,
                                    encoded, translated, transmitted, distributed, sold, licensed, or otherwise
                                    exploited for any commercial purpose whatsoever, without our express prior
                                    written permission.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Provided that you are eligible to use the Site,
                                    you are granted a limited license to access and use the Site and to download or
                                    print a copy of any portion of the Content to which you have properly gained
                                    access solely for your personal, non-commercial use. We reserve all rights not
                                    expressly granted to you in and to the Site, the Content and the Marks.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_vhkegautf00d"></a><span
                                    style='font-size:16.0pt;line-height:150%'>USER REPRESENTATIONS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>By using the Site, you represent and warrant
                                    that: <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[(1) all registration information you submit
                                    will be true, accurate, current, and complete;<b style='mso-bidi-font-weight:
                                                                                     normal'> </b>(2) you will maintain the accuracy of such information and promptly
                                    update such registration information as necessary;]<b style='mso-bidi-font-weight:
                                                                                          normal'> <o:p></o:p></b></span></p>

                            <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
                                                                           normal'><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                        Arial'><o:p>&nbsp;</o:p></span></b></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) you have the legal capacity and you agree to
                                    comply with these Terms of Use; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[(4) you are not under the age of 13;] <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) not a minor in the jurisdiction in which you
                                    reside[, or if a minor, you have received parental permission to use the Site];
                                    <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(6) you will not access the Site through
                                    automated or non-human means, whether through a bot, script, or otherwise; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(7) you will not use the Site for any illegal or
                                    unauthorized purpose; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(8) your use of the Site will not violate any
                                    applicable law or regulation.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If you provide any information that is untrue,
                                    inaccurate, not current, or incomplete, we have the right to suspend or
                                    terminate your account and refuse any and all current or future use of the Site
                                    (or any portion thereof). <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_esuoutkhaf53"></a><span
                                    style='font-size:16.0pt;line-height:150%'>USER REGISTRATION<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You may be required to register with the Site.
                                    You agree to keep your password confidential and will be responsible for all
                                    use of your account and password. We reserve the right to remove, reclaim, or
                                    change a username you select if we determine, in our sole discretion, that such
                                    username is inappropriate, obscene, or otherwise objectionable.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>&nbsp;<o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_1voziltdxegg"></a><span
                                    style='font-size:16.0pt;line-height:150%'>PROHIBITED ACTIVITIES<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You may not access or use the Site for any
                                    purpose other than that for which we make the Site available. The Site may not
                                    be used in connection with any commercial endeavors except those that are
                                    specifically endorsed or approved by us. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>As a user of the Site, you agree not to:<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>1.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>systematically
                                    retrieve data or other content from the Site to create or compile, directly or
                                    indirectly, a collection, compilation, database, or directory without written
                                    permission from us.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>2.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>make any
                                    unauthorized use of the Site, including collecting usernames and/or email
                                    addresses of users by electronic or other means for the purpose of sending
                                    unsolicited email, or creating user accounts by automated means or under false
                                    pretenses.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>3.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>use a buying
                                    agent or purchasing agent to make purchases on the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>4.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>use the
                                    Site to advertise or offer to sell goods and services.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>5.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>circumvent,
                                    disable, or otherwise interfere with security-related features of the Site,
                                    including features that prevent or restrict the use or copying of any Content
                                    or enforce limitations on the use of the Site and/or the Content contained
                                    therein.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>6.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>engage in
                                    unauthorized framing of or linking to the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>7.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>trick,
                                    defraud, or mislead us and other users, especially in any attempt to learn
                                    sensitive account information such as user passwords;<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>8.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>make
                                    improper use of our support services or submit false reports of abuse or
                                    misconduct.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>9.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>engage in
                                    any automated use of the system, such as using scripts to send comments or
                                    messages, or using any data mining, robots, or similar data gathering and
                                    extraction tools.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>10.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>interfere
                                    with, disrupt, or create an undue burden on the Site or the networks or
                                    services connected to the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>11.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>attempt to
                                    impersonate another user or person or use the username of another user.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>12.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>sell or
                                    otherwise transfer your profile.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>13.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>use any
                                    information obtained from the Site in order to harass, abuse, or harm another
                                    person.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>14.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>use the
                                    Site as part of any effort to compete with us or otherwise use the Site and/or
                                    the Content for any revenue-generating endeavor or commercial enterprise.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>15.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>decipher,
                                    decompile, disassemble, or reverse engineer any of the software comprising or
                                    in any way making up a part of the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>16.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>attempt to
                                    bypass any measures of the Site designed to prevent or restrict access to the
                                    Site, or any portion of the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>17.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>harass,
                                    annoy, intimidate, or threaten any of our employees or agents engaged in
                                    providing any portion of the Site to you.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>18.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>delete the
                                    copyright or other proprietary rights notice from any Content.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>19.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>copy or
                                    adapt the Site?s software, including but not limited to Flash, PHP, HTML,
                                    JavaScript, or other code.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>20.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>upload or
                                    transmit (or attempt to upload or to transmit) viruses, Trojan horses, or other
                                    material, including excessive use of capital letters and spamming (continuous
                                    posting of repetitive text), that interferes with any party?s uninterrupted use
                                    and enjoyment of the Site or modifies, impairs, disrupts, alters, or interferes
                                    with the use, features, functions, operation, or maintenance of the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>21.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>upload or
                                    transmit (or attempt to upload or to transmit) any material that acts as a
                                    passive or active information collection or transmission mechanism, including
                                    without limitation, clear graphics interchange formats (?gifs?), 1×1 pixels,
                                    web bugs, cookies, or other similar devices (sometimes referred to as ?spyware?
                                    or ?passive collection mechanisms? or ?pcms?).<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>22.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>except as
                                    may be the result of standard search engine or Internet browser usage, use,
                                    launch, develop, or distribute any automated system, including without limitation,
                                    any spider, robot, cheat utility, scraper, or offline reader that accesses the
                                    Site, or using or launching any unauthorized script or other software.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>23.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>disparage,
                                    tarnish, or otherwise harm, in our opinion, us and/or the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>24.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>use the
                                    Site in a manner inconsistent with any applicable laws or regulations.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:1.0cm;text-indent:-21.25pt;line-height:
                               150%;mso-list:l0 level1 lfo1'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>25.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>[other]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
                                                                           normal'><span style='font-size:16.0pt;line-height:150%;font-family:"Arial",sans-serif;
                                        mso-fareast-font-family:Arial'>USER GENERATED CONTRIBUTIONS<o:p></o:p></span></b></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-size:16.0pt;
                                                                              line-height:150%;font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The Site may invite you to chat, contribute to,
                                    or participate in blogs, message boards, online forums, and other
                                    functionality, and may provide you with the opportunity to create, submit,
                                    post, display, transmit, perform, publish, distribute, or broadcast content and
                                    materials to us or on the Site, including but not limited to text, writings,
                                    video, audio, photographs, graphics, comments, suggestions, or personal
                                    information or other material (collectively, &quot;Contributions&quot;). <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Contributions may be viewable by other users of
                                    the Site and through third-party websites. As such, any Contributions you
                                    transmit may be treated as non-confidential and non-proprietary. When you
                                    create or make available any Contributions, you thereby represent and warrant
                                    that:<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>1.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>the creation,
                                    distribution, transmission, public display, or performance, and the accessing,
                                    downloading, or copying of your Contributions do not and will not infringe the
                                    proprietary rights, including but not limited to the copyright, patent,
                                    trademark, trade secret, or moral rights of any third party.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>2.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>you are
                                    the creator and owner of or have the necessary licenses, rights, consents,
                                    releases, and permissions to use and to authorize us, the Site, and other users
                                    of the Site to use your Contributions in any manner contemplated by the Site
                                    and these Terms of Use.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>3.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>you have
                                    the written consent, release, and/or permission of each and every identifiable
                                    individual person in your Contributions to use the name or likeness of each and
                                    every such identifiable individual person to enable inclusion and use of your
                                    Contributions in any manner contemplated by the Site and these Terms of Use.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>4.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions are not false, inaccurate, or misleading.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>5.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions are not unsolicited or unauthorized advertising, promotional
                                    materials, pyramid schemes, chain letters, spam, mass mailings, or other forms
                                    of solicitation.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>6.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions are not obscene, lewd, lascivious, filthy, violent, harassing,
                                    libelous, slanderous, or otherwise objectionable (as determined by us).<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>7.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not ridicule, mock, disparage, intimidate, or abuse anyone.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>8.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not advocate the violent overthrow of any government or
                                    incite, encourage, or threaten physical harm against another.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>9.<span
                                            style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not violate any applicable law, regulation, or rule.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>10.<span
                                            style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not violate the privacy or publicity rights of any third
                                    party.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>11.<span
                                            style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not contain any material that solicits personal information
                                    from anyone under the age of 18 or exploits people under the age of 18 in a
                                    sexual or violent manner.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>12.<span
                                            style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not violate any federal or state law concerning child
                                    pornography, or otherwise intended to protect the health or well-being of
                                    minors;<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>13.<span
                                            style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not include any offensive comments that are connected to race,
                                    national origin, gender, sexual preference, or physical handicap.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:27.0pt;text-indent:-18.0pt;line-height:
                               150%;mso-list:l1 level1 lfo2'><![if !supportLists]><span style='font-family:
                                                         "Arial",sans-serif;mso-fareast-font-family:Arial'><span style='mso-list:Ignore'>14.<span
                                            style='font:7.0pt "Times New Roman"'> </span></span></span><![endif]><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>your
                                    Contributions do not otherwise violate, or link to material that violates, any
                                    provision of these Terms of Use, or any applicable law or regulation.<o:p></o:p></span></p>

                            <p class=MsoNormal style='margin-left:21.6pt;text-indent:-21.6pt;line-height:
                               150%'><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Any use of the Site in violation of the
                                    foregoing violates these Terms of Use and may result in, among other things,
                                    termination or suspension of your rights to use the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_osdumdez3bsf"></a><span
                                    style='font-size:16.0pt;line-height:150%'>CONTRIBUTION LICENSE<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>By posting your Contributions to any part of the
                                    Site [or making Contributions accessible to the Site by linking your account
                                    from the Site to any of your social networking accounts], you automatically
                                    grant, and you represent and warrant that you have the right to grant, to us an
                                    unrestricted, unlimited, irrevocable, perpetual, non-exclusive, transferable,
                                    royalty-free, fully-paid, worldwide right, and license to host, use, copy,
                                    reproduce, disclose, sell, resell, publish, broadcast, retitle, archive, store,
                                    cache, publicly perform, publicly display, reformat, translate, transmit,
                                    excerpt (in whole or in part), and distribute such Contributions (including,
                                    without limitation, your image and voice) for any purpose, commercial,
                                    advertising, or otherwise, and to prepare derivative works of, or incorporate
                                    into other works, such Contributions, and grant and authorize sublicenses of
                                    the foregoing. The use and distribution may occur in any media formats and
                                    through any media channels. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>This license will apply to any form, media, or
                                    technology now known or hereafter developed, and includes our use of your name,
                                    company name, and franchise name, as applicable, and any of the trademarks,
                                    service marks, trade names, logos, and personal and commercial images you provide.
                                    You waive all moral rights in your Contributions, and you warrant that moral
                                    rights have not otherwise been asserted in your Contributions. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We do not assert any ownership over your
                                    Contributions. You retain full ownership of all of your Contributions and any
                                    intellectual property rights or other proprietary rights associated with your
                                    Contributions. We are not liable for any statements or representations in your
                                    Contributions provided by you in any area on the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You are solely responsible for your
                                    Contributions to the Site and you expressly agree to exonerate us from any and
                                    all responsibility and to refrain from any legal action against us regarding
                                    your Contributions. <span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We have the right, in our sole and absolute
                                    discretion, (1) to edit, redact, or otherwise change any Contributions; (2) to
                                    re-categorize any Contributions to place them in more appropriate locations on
                                    the Site; and (3) to pre-screen or delete any Contributions at any time and for
                                    any reason, without notice. We have no obligation to monitor your
                                    Contributions. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span>&nbsp;<o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_azashdr7t4si"></a><span
                                    style='font-size:16.0pt;line-height:150%'>GUIDELINES FOR REVIEWS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We may provide you areas on the Site to leave
                                    reviews or ratings. When posting a review, you must comply with the following
                                    criteria: <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(1) you should have firsthand experience with
                                    the person/entity being reviewed; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(2) your reviews should not contain offensive
                                    profanity, or abusive, racist, offensive, or hate language; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) your reviews should not contain
                                    discriminatory references based on religion, race, gender, national origin,
                                    age, marital status, sexual orientation, or disability; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(4) your reviews should not contain references
                                    to illegal activity; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) you should not be affiliated with
                                    competitors if posting negative reviews; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(6) you should not make any conclusions as to
                                    the legality of conduct; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(7) you may not post any false or misleading
                                    statements; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(8) you may not organize a campaign encouraging
                                    others to post reviews, whether positive or negative. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We may accept, reject, or remove reviews in our
                                    sole discretion. We have absolutely no obligation to screen reviews or to
                                    delete reviews, even if anyone considers reviews objectionable or inaccurate. Reviews
                                    are not endorsed by us, and do not necessarily represent our opinions or the
                                    views of any of our affiliates or partners. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We do not assume liability for any review or for
                                    any claims, liabilities, or losses resulting from any review. By posting a
                                    review, you hereby grant to us a perpetual, non-exclusive, worldwide, royalty-free,
                                    fully-paid, assignable, and sublicensable right and license to reproduce,
                                    modify, translate, transmit by any means, display, perform, and/or distribute
                                    all content relating to reviews.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><b
                                        style='mso-bidi-font-weight:normal'>&nbsp;</b><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_9e8l9fhxyyva"></a><span
                                    style='font-size:16.0pt;line-height:150%'>MOBILE APPLICATION LICENSE<o:p></o:p></span></h1>

                            <h2 align=left style='text-align:left;line-height:150%'><a name="_9p9101wqtokd"></a><span
                                    style='font-size:12.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h2>

                            <h2 align=left style='text-align:left;line-height:150%'><a name="_apvbotjtf8l9"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Use License<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If you access the Site via a mobile application,
                                    then we grant you a revocable, non-exclusive, non-transferable, limited right
                                    to install and use the mobile application on wireless electronic devices owned
                                    or controlled by you, and to access and use the mobile application on such
                                    devices strictly in accordance with the Terms of Use of this mobile application
                                    license contained in these Terms of Use. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You shall not: <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(1) decompile, reverse engineer, disassemble,
                                    attempt to derive the source code of, or decrypt the application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(2) make any modification, adaptation,
                                    improvement, enhancement, translation, or derivative work from the application;
                                    <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) violate any applicable laws, rules, or
                                    regulations in connection with your access or use of the application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(4) remove, alter, or obscure any proprietary
                                    notice (including any notice of copyright or trademark) posted by us or the
                                    licensors of the application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) use the application for any revenue
                                    generating endeavor, commercial enterprise, or other purpose for which it is
                                    not designed or intended; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(6) make the application available over a
                                    network or other environment permitting access or use by multiple devices or
                                    users at the same time; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(7) use the application for creating a product,
                                    service, or software that is, directly or indirectly, competitive with or in
                                    any way a substitute for the application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(8) use the application to send automated
                                    queries to any website or to send any unsolicited commercial e-mail; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(9) use any proprietary information or any of
                                    our interfaces or our other intellectual property in the design, development,
                                    manufacture, licensing, or distribution of any applications, accessories, or
                                    devices for use with the application.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='text-align:left;line-height:150%'><a name="_29udqsku4ybv"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Apple and Android Devices<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The following terms apply when you use a mobile
                                    application obtained from either the Apple Store or Google Play (each an ?App
                                    Distributor?) to access the Site: <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(1) the license granted to you for our mobile
                                    application is limited to a non-transferable license to use the application on
                                    a device that utilizes the Apple iOS or Android operating systems, as
                                    applicable, and in accordance with the usage rules set forth in the applicable
                                    App Distributor?s Terms of Use; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(2) we are responsible for providing any
                                    maintenance and support services with respect to the mobile application as
                                    specified in the Terms of Use of this mobile application license contained in
                                    these Terms of Use or as otherwise required under applicable law, and you
                                    acknowledge that each App Distributor has no obligation whatsoever to furnish
                                    any maintenance and support services with respect to the mobile application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) in the event of any failure of the mobile
                                    application to conform to any applicable warranty, you may notify the
                                    applicable App Distributor, and the App Distributor, in accordance with its
                                    terms and policies, may refund the purchase price, if any, paid for the mobile
                                    application, and to the maximum extent permitted by applicable law, the App
                                    Distributor will have no other warranty obligation whatsoever with respect to
                                    the mobile application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(4) you represent and warrant that (i) you are
                                    not located in a country that is subject to a U.S. government embargo, or that
                                    has been designated by the U.S. government as a ?terrorist supporting? country
                                    and (ii) you are not listed on any U.S. government list of prohibited or
                                    restricted parties; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) you must comply with applicable third-party
                                    terms of agreement when using the mobile application, e.g., if you have a VoIP
                                    application, then you must not be in violation of their wireless data service
                                    agreement when using the mobile application; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>6) you acknowledge and agree that the App
                                    Distributors are third-party beneficiaries of the Terms of Use in this mobile
                                    application license contained in these Terms of Use, and that each App
                                    Distributor will have the right (and will be deemed to have accepted the right)
                                    to enforce the Terms of Use in this mobile application license contained in
                                    these Terms of Use against you as a third-party beneficiary thereof.<span
                                        style='mso-spacerun:yes'>  </span><o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_736fvbpuztsj"></a><span
                                    style='font-size:16.0pt;line-height:150%'>SOCIAL MEDIA<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>As part of the functionality of the Site, you
                                    may link your account with online accounts you have with third-party service
                                    providers (each such account, a ?Third-Party Account?) by either: (1) providing
                                    your Third-Party Account login information through the Site; or (2) allowing us
                                    to access your Third-Party Account, as is permitted under the applicable Terms
                                    of Use that govern your use of each Third-Party Account. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You represent and warrant that you are entitled
                                    to disclose your Third-Party Account login information to us and/or grant us
                                    access to your Third-Party Account, without breach by you of any of the Terms
                                    of Use that govern your use of the applicable Third-Party Account, and without
                                    obligating us to pay any fees or making us subject to any usage limitations
                                    imposed by the third-party service provider of the Third-Party Account. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>By granting us access to any Third-Party
                                    Accounts, you understand that (1) we may access, make available, and store (if
                                    applicable) any content that you have provided to and stored in your
                                    Third-Party Account (the ?Social Network Content?) so that it is available on
                                    and through the Site via your account, including without limitation any friend
                                    lists and (2) we may submit to and receive from your Third-Party Account additional
                                    information to the extent you are notified when you link your account with the
                                    Third-Party Account. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Depending on the Third-Party Accounts you choose
                                    and subject to the privacy settings that you have set in such Third-Party
                                    Accounts, personally identifiable information that you post to your Third-Party
                                    Accounts may be available on and through your account on the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Please note that if a Third-Party Account or
                                    associated service becomes unavailable or our access to such Third-Party
                                    Account is terminated by the third-party service provider, then Social Network
                                    Content may no longer be available on and through the Site. You will have the
                                    ability to disable the connection between your account on the Site and your
                                    Third-Party Accounts at any time. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>PLEASE NOTE THAT YOUR RELATIONSHIP WITH THE
                                    THIRD-PARTY SERVICE PROVIDERS ASSOCIATED WITH YOUR THIRD-PARTY ACCOUNTS IS
                                    GOVERNED SOLELY BY YOUR AGREEMENT(S) WITH SUCH THIRD-PARTY SERVICE PROVIDERS. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We make no effort to review any Social Network
                                    Content for any purpose, including but not limited to, for accuracy, legality,
                                    or non-infringement, and we are not responsible for any Social Network Content.
                                    <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You acknowledge and agree that we may access
                                    your email address book associated with a Third-Party Account and your contacts
                                    list stored on your mobile device or tablet computer solely for purposes of
                                    identifying and informing you of those contacts who have also registered to use
                                    the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You can deactivate the connection between the
                                    Site and your Third-Party Account by contacting us using the contact
                                    information below or through your account settings (if applicable). We will
                                    attempt to delete any information stored on our servers that was obtained
                                    through such Third-Party Account, except the username and profile picture that
                                    become associated with your account.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_74knogvdugpc"></a><span
                                    style='font-size:16.0pt;line-height:150%'>SUBMISSIONS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You acknowledge and agree that any questions,
                                    comments, suggestions, ideas, feedback, or other information regarding the Site
                                    (&quot;Submissions&quot;) provided by you to us are non-confidential and shall
                                    become our sole property. We shall own exclusive rights, including all
                                    intellectual property rights, and shall be entitled to the unrestricted use and
                                    dissemination of these Submissions for any lawful purpose, commercial or
                                    otherwise, without acknowledgment or compensation to you. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You hereby waive all moral rights to any such
                                    Submissions, and you hereby warrant that any such Submissions are original with
                                    you or that you have the right to submit such Submissions. You agree there
                                    shall be no recourse against us for any alleged or actual infringement or
                                    misappropriation of any proprietary right in your Submissions. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_ryk9288t8bvy"></a><span
                                    style='font-size:16.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h1>

                            <h1 align=left style='text-align:left;line-height:150%'><span style='font-size:
                                                                                          16.0pt;line-height:150%'>THIRD-PARTY WEBSITES AND CONTENT<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The Site may contain (or you may be sent via the
                                    Site) links to other websites (&quot;Third-Party Websites&quot;) as well as
                                    articles, photographs, text, graphics, pictures, designs, music, sound, video,
                                    information, applications, software, and other content or items belonging to or
                                    originating from third parties (&quot;Third-Party Content&quot;). <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Such Third-Party Websites and Third-Party
                                    Content are not investigated, monitored, or checked for accuracy,
                                    appropriateness, or completeness by us, and we are not responsible for any
                                    Third-Party Websites accessed through the Site or any Third-Party Content
                                    posted on, available through, or installed from the Site, including the
                                    content, accuracy, offensiveness, opinions, reliability, privacy practices, or
                                    other policies of or contained in the Third-Party Websites or the Third-Party
                                    Content. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Inclusion of, linking to, or permitting the use
                                    or installation of any Third-Party Websites or any Third-Party Content does not
                                    imply approval or endorsement thereof by us. If you decide to leave the Site
                                    and access the Third-Party Websites or to use or install any Third-Party
                                    Content, you do so at your own risk, and you should be aware these Terms of Use
                                    no longer govern. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You should review the applicable terms and
                                    policies, including privacy and data gathering practices, of any website to
                                    which you navigate from the Site or relating to any applications you use or
                                    install from the Site. Any purchases you make through Third-Party Websites will
                                    be through other websites and from other companies, and we take no
                                    responsibility whatsoever in relation to such purchases which are exclusively
                                    between you and the applicable third party. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You agree and acknowledge that we do not endorse
                                    the products or services offered on Third-Party Websites and you shall hold us
                                    harmless from any harm caused by your purchase of such products or services. Additionally,
                                    you shall hold us harmless from any losses sustained by you or harm caused to
                                    you relating to or resulting in any way from any Third-Party Content or any contact
                                    with Third-Party Websites. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_x50fpkv2wgef"></a><span
                                    style='font-size:16.0pt;line-height:150%'>ADVERTISERS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We allow advertisers to display their
                                    advertisements and other information in certain areas of the Site, such as
                                    sidebar advertisements or banner advertisements. If you are an advertiser, you
                                    shall take full responsibility for any advertisements you place on the Site and
                                    any services provided on the Site or products sold through those
                                    advertisements. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Further, as an advertiser, you warrant and
                                    represent that you possess all rights and authority to place advertisements on
                                    the Site, including, but not limited to, intellectual property rights,
                                    publicity rights, and contractual rights.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[As an advertiser, you agree that such
                                    advertisements are subject to our Digital Millennium Copyright Act (?DMCA?)
                                    Notice and Policy provisions as described below, and you understand and agree
                                    there will be no refund or other compensation for DMCA takedown-related
                                    issues.] We simply provide the space to place such advertisements, and we have
                                    no other relationship with advertisers.<span style='mso-spacerun:yes'>  </span><span
                                        style='mso-spacerun:yes'> </span><b style='mso-bidi-font-weight:normal'><o:p></o:p></b></span></p>

                            <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
                                                                           normal'><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                        Arial'>&nbsp;</span></b><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                                         Arial'><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_z3ila0tbxob2"></a><span
                                    style='font-size:16.0pt;line-height:150%'>SITE MANAGEMENT<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We reserve the right, but not the obligation,
                                    to:&nbsp;<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(1) monitor the Site for violations of these Terms
                                    of Use; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(2) take appropriate legal action against anyone
                                    who, in our sole discretion, violates the law or these Terms of Use, including
                                    without limitation, reporting such user to law enforcement authorities; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) in our sole discretion and without
                                    limitation, refuse, restrict access to, limit the availability of, or disable
                                    (to the extent technologically feasible) any of your Contributions or any
                                    portion thereof; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(4) in&nbsp;our sole discretion and without
                                    limitation, notice, or liability, to remove from the Site or otherwise disable
                                    all files and content that are excessive in size or are in any way burdensome
                                    to our systems; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) otherwise manage the Site in a manner
                                    designed to protect our rights and property and to facilitate the proper
                                    functioning of the Site.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_jod8wtwc1vvv"></a><span
                                    style='font-size:16.0pt;line-height:150%'>PRIVACY POLICY<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We care about data privacy and security. Please
                                    review our Privacy Policy [CLICK HERE]/posted on the Site]. By using the Site,
                                    you agree to be bound by our Privacy Policy, which is incorporated into these Terms
                                    of Use. Please be advised the Site is hosted in the United States. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If you access the Site from the European Union,
                                    Asia, or any other region of the world with laws or other requirements
                                    governing personal data collection, use, or disclosure that differ from
                                    applicable laws in the United States, then through your continued use of the
                                    Site, you are transferring your data to the United States, and you expressly
                                    consent to have your data transferred to and processed in the United States.</span><span
                                    style='font-family:"Verdana",sans-serif;mso-fareast-font-family:Verdana;
                                    mso-bidi-font-family:Verdana'> <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Verdana",sans-serif;
                                                                              mso-fareast-font-family:Verdana;mso-bidi-font-family:Verdana'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Verdana",sans-serif;
                                                                              mso-fareast-font-family:Verdana;mso-bidi-font-family:Verdana'>[</span><span
                                                                              style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>Further,
                                    we do not knowingly accept, request, or solicit information from children or
                                    knowingly market to children. Therefore, in accordance with the U.S. Children?s
                                    Online Privacy Protection Act, if we receive actual knowledge that anyone under
                                    the age of 13 has provided personal information to us without the requisite and
                                    verifiable parental consent, we will delete that information from the Site as
                                    quickly as is reasonably practical.]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_th8ukiggl6po"></a><span
                                    style='font-size:16.0pt;line-height:150%'>DIGITAL MILLENNIUM COPYRIGHT ACT
                                    (DMCA) NOTICE AND POLICY<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <h2 align=left style='text-align:left;line-height:150%'><a name="_pyfabmazva0w"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Notifications<o:p></o:p></span></h2>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We respect the intellectual property rights of
                                    others. If you believe that any material available on or through the Site
                                    infringes upon any copyright you own or control, please immediately notify our
                                    Designated Copyright Agent using the contact information provided below (a
                                    ?Notification?). <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>A copy of your Notification will be sent to the
                                    person who posted or stored the material addressed in the Notification. Please
                                    be advised that pursuant to federal law you may be held liable for damages if
                                    you make material misrepresentations in a Notification. Thus, if you are not
                                    sure that material located on or linked to by the Site infringes your
                                    copyright, you should consider first contacting an attorney.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>All Notifications should meet the requirements
                                    of DMCA 17 U.S.C. § 512(c)(3) and include the following information: <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(1) A physical or electronic signature of a
                                    person authorized to act on behalf of the owner of an exclusive right that is
                                    allegedly infringed; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(2) identification of the copyrighted work
                                    claimed to have been infringed, or, if multiple copyrighted works on the Site
                                    are covered by the Notification, a representative list of such works on the
                                    Site; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) identification of the material that is
                                    claimed to be infringing or to be the subject of infringing activity and that
                                    is to be removed or access to which is to be disabled, and information
                                    reasonably sufficient to permit us to locate the material; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(4) information reasonably sufficient to permit
                                    us to contact the complaining party, such as an address, telephone number, and,
                                    if available, an email address at which the complaining party may be contacted;
                                    <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) a statement that the complaining party has a
                                    good faith belief that use of the material in the manner complained of is not
                                    authorized by the copyright owner, its agent, or the law; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(6) a statement that the information in the
                                    notification is accurate, and under penalty of perjury, that the complaining
                                    party is authorized to act on behalf of the owner of an exclusive right that is
                                    allegedly infringed upon.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='text-align:left;text-indent:-21.6pt;line-height:150%'><a
                                    name="_6hwkkoht7l6p"></a><i style='mso-bidi-font-style:normal'><span
                                        style='font-size:12.0pt;line-height:150%'><span style='mso-tab-count:1'>       </span></span></i><span
                                    style='font-size:12.0pt;line-height:150%'>Counter Notification<o:p></o:p></span></h2>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If you believe your own copyrighted material has
                                    been removed from the Site as a result of a mistake or misidentification, you
                                    may submit a written counter notification to [us/our Designated Copyright
                                    Agent] using the contact information provided below (a ?Counter Notification?).
                                    <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>To be an effective Counter Notification under
                                    the DMCA, your Counter Notification must include substantially the following: <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(1) identification of the material that has been
                                    removed or disabled and the location at which the material appeared before it
                                    was removed or disabled; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(2) a statement that you consent to the
                                    jurisdiction of the Federal District Court in which your address is located, or
                                    if your address is outside the United States, for any judicial district in
                                    which we are located; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(3) a statement that you will accept service of
                                    process from the party that filed the Notification or the party's agent; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(4) your name, address, and telephone number; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(5) a statement under penalty of perjury that
                                    you have a good faith belief that the material in question was removed or
                                    disabled as a result of a mistake or misidentification of the material to be
                                    removed or disabled; <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>(6) your physical or electronic signature.<o:p></o:p></span></p>

                            <p class=MsoNormal style='text-indent:-21.6pt;line-height:150%'><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If you send us a valid, written Counter
                                    Notification meeting the requirements described above, we will restore your
                                    removed or disabled material, unless we first receive notice from the party
                                    filing the Notification informing us that such party has filed a court action
                                    to restrain you from engaging in infringing activity related to the material in
                                    question.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Please note that if you materially misrepresent
                                    that the disabled or removed content was removed by mistake or
                                    misidentification, you may be liable for damages, including costs and
                                    attorney's fees. Filing a false Counter Notification constitutes perjury.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Designated Copyright Agent<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Name]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Attn: Copyright Agent<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Address]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[City, State Zip]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[email]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_etmpra24b75j"></a><span
                                    style='font-size:16.0pt;line-height:150%'>COPYRIGHT INFRINGEMENTS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We respect the intellectual property rights of
                                    others. If you believe that any material available on or through the Site
                                    infringes upon any copyright you own or control, please immediately notify us
                                    using the contact information provided below (a ?Notification?). A copy of your
                                    Notification will be sent to the person who posted or stored the material
                                    addressed in the Notification. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Please be advised that pursuant to federal law
                                    you may be held liable for damages if you make material misrepresentations in a
                                    Notification. Thus, if you are not sure that material located on or linked to
                                    by the Site infringes your copyright, you should consider first contacting an
                                    attorney.]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_97k6yqrr20ny"></a><span
                                    style='font-size:16.0pt;line-height:150%'>TERM AND TERMINATION<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>These Terms of Use shall remain in full force
                                    and effect while you use the Site. WITHOUT LIMITING ANY OTHER PROVISION OF
                                    THESE TERMS OF USE, WE RESERVE THE RIGHT TO, IN OUR SOLE DISCRETION AND WITHOUT
                                    NOTICE OR LIABILITY, DENY ACCESS TO AND USE OF THE SITE (INCLUDING BLOCKING
                                    CERTAIN IP ADDRESSES), TO ANY PERSON FOR ANY REASON OR FOR NO REASON, INCLUDING
                                    WITHOUT LIMITATION FOR BREACH OF ANY REPRESENTATION, WARRANTY, OR COVENANT
                                    CONTAINED IN THESE TERMS OF USE OR OF ANY APPLICABLE LAW OR REGULATION. WE MAY
                                    TERMINATE YOUR USE OR PARTICIPATION IN THE SITE OR DELETE [YOUR ACCOUNT AND]
                                    ANY CONTENT OR INFORMATION THAT YOU POSTED AT ANY TIME, WITHOUT WARNING, IN OUR
                                    SOLE DISCRETION. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If we terminate or suspend your account for any
                                    reason, you are prohibited from registering and creating a new account under
                                    your name, a fake or borrowed name, or the name of any third party, even if you
                                    may be acting on behalf of the third party. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>In addition to terminating or suspending your
                                    account, we reserve the right to take appropriate legal action, including
                                    without limitation pursuing civil, criminal, and injunctive redress.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_iu8vbv7ttwtj"></a><span
                                    style='font-size:16.0pt;line-height:150%'>MODIFICATIONS AND INTERRUPTIONS <o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We reserve the right to change, modify, or
                                    remove the contents of the Site at any time or for any reason at our sole
                                    discretion without notice. However, we have no obligation to update any
                                    information on our Site. We also reserve the right to modify or discontinue all
                                    or part of the Site without notice at any time. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We will not be liable to you or any third party
                                    for any modification, price change, suspension, or discontinuance of the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We cannot guarantee the Site will be available
                                    at all times. We may experience hardware, software, or other problems or need
                                    to perform maintenance related to the Site, resulting in interruptions, delays,
                                    or errors. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We reserve the right to change, revise, update,
                                    suspend, discontinue, or otherwise modify the Site at any time or for any
                                    reason without notice to you. You agree that we have no liability whatsoever
                                    for any loss, damage, or inconvenience caused by your inability to access or
                                    use the Site during any downtime or discontinuance of the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Nothing in these Terms of Use will be construed
                                    to obligate us to maintain and support the Site or to supply any corrections,
                                    updates, or releases in connection therewith.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='margin-bottom:2.0pt;text-align:left;line-height:150%'><a
                                    name="_2c83b7zh2yuf"></a><span style='font-size:16.0pt;line-height:150%'>GOVERNING
                                    LAW <o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>These Terms of Use and your use of the Site are
                                    governed by and construed in accordance with the laws of the State of [name of
                                    state]<b style='mso-bidi-font-weight:normal'> </b>applicable to agreements made
                                    and to be entirely performed within the State/Commonwealth of [name of state],
                                    without regard to its conflict of law principles. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='margin-bottom:2.0pt;text-align:left;line-height:150%'><a
                                    name="_2vh49k1y3d8n"></a><span style='font-size:16.0pt;line-height:150%'>DISPUTE
                                    RESOLUTION<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
                                                                           normal'><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                        Arial'>Option 1</span></b><span style='font-family:"Arial",sans-serif;
                                                           mso-fareast-font-family:Arial'>: Any legal action of whatever nature brought by
                                    either you or us (collectively, the ?Parties? and individually, a ?Party?)
                                    shall be commenced or prosecuted in the state and federal courts located in
                                    [name of county] County, [name of state], and the Parties hereby consent to,
                                    and waive all defenses of lack of personal jurisdiction and forum non
                                    conveniens with respect to venue and jurisdiction in such state and federal
                                    courts. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Application of the United Nations Convention on
                                    Contracts for the International Sale of Goods and the Uniform Computer
                                    Information Transaction Act (UCITA) are excluded from these Terms of Use. In no
                                    event shall any claim, action, or proceeding brought by either Party related in
                                    any way to the Site be commenced more than ______ years after the cause of
                                    action arose.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='margin-bottom:5.0pt;text-align:left;line-height:150%;
                                mso-pagination:none;page-break-after:auto'><a name="_uf9wqm9x9jjl"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Option 2: Informal Negotiations<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>To expedite resolution and control the cost of
                                    any dispute, controversy, or claim related to these Terms of Use (each a
                                    &quot;Dispute&quot; and collectively, the ?Disputes?) brought by either you or
                                    us (individually, a ?Party? and collectively, the ?Parties?), the Parties agree
                                    to first attempt to negotiate any Dispute (except those Disputes expressly
                                    provided below) informally for at least <b style='mso-bidi-font-weight:normal'>______</b>
                                    days before initiating arbitration. Such informal negotiations commence upon
                                    written notice from one Party to the other Party.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='margin-bottom:5.0pt;text-align:left;line-height:150%;
                                mso-pagination:none;page-break-after:auto'><a name="_c4zer9hmg99b"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Binding Arbitration<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If the Parties are unable to resolve a Dispute
                                    through informal negotiations, the Dispute (except those Disputes expressly
                                    excluded below) will be finally and exclusively resolved by binding
                                    arbitration. YOU UNDERSTAND THAT WITHOUT THIS PROVISION, YOU WOULD HAVE THE
                                    RIGHT TO SUE IN COURT AND HAVE A JURY TRIAL. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The arbitration shall be commenced and conducted
                                    under the Commercial Arbitration Rules of the American Arbitration Association
                                    (&quot;AAA&quot;) and, where appropriate, the AAA?s Supplementary Procedures
                                    for Consumer Related Disputes (&quot;AAA Consumer Rules&quot;), both of which
                                    are available at the AAA website </span><a href="http://www.adr.org"><span
                                        style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>www.adr.org</span></a><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'>. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Your arbitration fees and your share of
                                    arbitrator compensation shall be governed by the AAA Consumer Rules and, where
                                    appropriate, limited by the AAA Consumer Rules. [If such costs are determined
                                    to by the arbitrator to be excessive, we will pay all arbitration fees and
                                    expenses.] <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The arbitration may be conducted in person,
                                    through the submission of documents, by phone, or online. The arbitrator will
                                    make a decision in writing, but need not provide a statement of reasons unless
                                    requested by either Party. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The arbitrator must follow applicable law, and
                                    any award may be challenged if the arbitrator fails to do so. Except where
                                    otherwise required by the applicable AAA rules or applicable law, the
                                    arbitration will take place in [name of county] County, [name of state]. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Except as otherwise provided herein, the Parties
                                    may litigate in court to compel arbitration, stay proceedings pending
                                    arbitration, or to confirm, modify, vacate, or enter judgment on the award
                                    entered by the arbitrator.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If for any reason, a Dispute proceeds in court
                                    rather than arbitration, the Dispute shall be commenced or prosecuted in the
                                    state and federal courts located in [name of county] County, [name of state],
                                    and the Parties hereby consent to, and waive all defenses of lack of personal
                                    jurisdiction, and forum non conveniens with respect to venue and jurisdiction
                                    in such state and federal courts.&nbsp;<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Application of the United Nations Convention on
                                    Contracts for the International Sale of Goods and the Uniform Computer
                                    Information Transaction Act (UCITA) are excluded from these Terms of Use. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>In no event shall any Dispute brought by either
                                    Party related in any way to the Site be commenced more than _____ years after
                                    the cause of action arose. If this provision is found to be illegal or unenforceable,
                                    then neither Party will elect to arbitrate any Dispute falling within that
                                    portion of this provision found to be illegal or unenforceable and such Dispute
                                    shall be decided by a court of competent jurisdiction within the courts listed
                                    for jurisdiction above, and the Parties agree to submit to the personal
                                    jurisdiction of that court.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='margin-bottom:5.0pt;text-align:left;line-height:150%;
                                mso-pagination:none;page-break-after:auto'><a name="_1bw55s6d9znb"></a><span
                                    style='font-size:12.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h2>

                            <h2 align=left style='margin-bottom:5.0pt;text-align:left;line-height:150%;
                                mso-pagination:none;page-break-after:auto'><span style='font-size:12.0pt;
                                    line-height:150%'>Option 3: Binding Arbitration<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>To expedite resolution and control the cost of
                                    any dispute, controversy or claim related to these Terms of Use (each a
                                    &quot;Dispute&quot; and collectively, ?Disputes?), any Dispute brought by
                                    either you or us (individually, a ?Party? and collectively, the ?Parties?)
                                    shall be finally and exclusively resolved by binding arbitration. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>YOU UNDERSTAND THAT WITHOUT THIS PROVISION, YOU
                                    WOULD HAVE THE RIGHT TO SUE IN COURT AND HAVE A JURY TRIAL. The arbitration
                                    shall be commenced and conducted under the Commercial Arbitration Rules of the
                                    American Arbitration Association (&quot;AAA&quot;) and, where appropriate, the
                                    AAA?s Supplementary Procedures for Consumer Related Disputes (&quot;AAA
                                    Consumer Rules&quot;), both of which are available at the AAA website </span><a
                                    href="http://www.adr.org"><span style='font-family:"Arial",sans-serif;
                                                                mso-fareast-font-family:Arial'>www.adr.org</span></a><span style='font-family:
                                                              "Arial",sans-serif;mso-fareast-font-family:Arial'>. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Your arbitration fees and your share of
                                    arbitrator compensation shall be governed by the AAA Consumer Rules and, where
                                    appropriate, limited by the AAA Consumer Rules. [If such costs are determined
                                    to by the arbitrator to be excessive, we will pay all arbitration fees and
                                    expenses.] <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The arbitration may be conducted in person,
                                    through the submission of documents, by phone, or online. The arbitrator will
                                    make a decision in writing, but need not provide a statement of reasons unless
                                    requested by either Party. The arbitrator must follow applicable law, and any
                                    award may be challenged if the arbitrator fails to do so. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Except where otherwise required by the
                                    applicable AAA rules or applicable law, the arbitration will take place in
                                    [name of county] County, [name of state]. Except as otherwise provided herein,
                                    the Parties may litigate in court to compel arbitration, stay proceedings
                                    pending arbitration, or to confirm, modify, vacate, or enter judgment on the
                                    award entered by the arbitrator.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If for any reason, a Dispute proceeds in court
                                    rather than arbitration, the Dispute shall be commenced or prosecuted in the
                                    state and federal courts located in [name of county] County, [name of state],
                                    and the Parties hereby consent to, and waive all defenses of lack of, personal
                                    jurisdiction, and forum non conveniens with respect to venue and jurisdiction
                                    in such state and federal courts.&nbsp;<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Application of the United Nations Convention on
                                    Contracts for the International Sale of Goods and the Uniform Computer
                                    Information Transaction Act (UCITA) are excluded from these Terms of Use. In no
                                    event shall any Dispute brought by either Party related in any way to the Site
                                    or Services be commenced more than ______ years after the cause of action
                                    arose. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If this provision is found to be illegal or
                                    unenforceable, then neither Party will elect to arbitrate any Dispute falling
                                    within that portion of this provision found to be illegal or unenforceable and
                                    such Dispute shall be decided by a court of competent jurisdiction within the
                                    courts listed for jurisdiction above, and the Parties agree to submit to the
                                    personal jurisdiction of that court.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='margin-bottom:5.0pt;text-align:left;line-height:150%;
                                mso-pagination:none;page-break-after:auto'><a name="_m6ysixdw81sh"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Option 2/Option 3: Restrictions<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The Parties agree that any arbitration shall be
                                    limited to the Dispute between the Parties individually. To the full extent
                                    permitted by law, (a) no arbitration shall be joined with any other proceeding;
                                    (b) there is no right or authority for any Dispute to be arbitrated on a
                                    class-action basis or to utilize class action procedures; and (c) there is no
                                    right or authority for any Dispute to be brought in a purported representative
                                    capacity on behalf of the general public or any other persons.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h2 align=left style='margin-bottom:5.0pt;text-align:left;line-height:150%;
                                mso-pagination:none;page-break-after:auto'><a name="_ula5sr33tnfr"></a><span
                                    style='font-size:12.0pt;line-height:150%'>Option 2/Option 3: Exceptions to
                                    [Informal Negotiations and] Arbitration<o:p></o:p></span></h2>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>The Parties agree that the following Disputes
                                    are not subject to the above provisions concerning [informal negotiations and]
                                    binding arbitration: (a) any Disputes seeking to enforce or protect, or
                                    concerning the validity of, any of the intellectual property rights of a Party;
                                    (b) any Dispute related to, or arising from, allegations of theft, piracy,
                                    invasion of privacy, or unauthorized use; and (c) any claim for injunctive
                                    relief. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If this provision is found to be illegal or
                                    unenforceable, then neither Party will elect to arbitrate any Dispute falling
                                    within that portion of this provision found to be illegal or unenforceable and
                                    such Dispute shall be decided by a court of competent jurisdiction within the
                                    courts listed for jurisdiction above, and the Parties agree to submit to the
                                    personal jurisdiction of that court.<b style='mso-bidi-font-weight:normal'><o:p></o:p></b></span></p>

                            <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
                                                                           normal'><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                        Arial'>&nbsp;</span></b><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                                         Arial'><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_uohuk51jb5b4"></a><span
                                    style='font-size:16.0pt;line-height:150%'>CORRECTIONS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>There may be information on the Site that
                                    contains typographical errors, inaccuracies, or omissions that may relate to
                                    the Site, including descriptions, pricing, availability, and various other
                                    information. We reserve the right to correct any errors, inaccuracies, or
                                    omissions and to change or update the information on the Site at any time,
                                    without prior notice.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_6i7jyluc8ic7"></a><span
                                    style='font-size:16.0pt;line-height:150%'>DISCLAIMER<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>THE SITE IS PROVIDED ON AN AS-IS AND
                                    AS-AVAILABLE BASIS. YOU AGREE THAT YOUR USE OF THE SITE AND OUR SERVICES WILL
                                    BE AT YOUR SOLE RISK. TO THE FULLEST EXTENT PERMITTED BY LAW, WE DISCLAIM ALL
                                    WARRANTIES, EXPRESS OR IMPLIED, IN CONNECTION WITH THE SITE AND YOUR USE
                                    THEREOF, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
                                    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. WE
                                    MAKE NO WARRANTIES OR REPRESENTATIONS ABOUT THE ACCURACY OR COMPLETENESS OF THE
                                    SITE?S CONTENT OR THE CONTENT OF ANY WEBSITES LINKED TO THE SITE AND WE WILL ASSUME
                                    NO LIABILITY OR RESPONSIBILITY FOR ANY (1) ERRORS, MISTAKES, OR INACCURACIES OF
                                    CONTENT AND MATERIALS, (2) PERSONAL INJURY OR PROPERTY DAMAGE, OF ANY NATURE
                                    WHATSOEVER, RESULTING FROM YOUR ACCESS TO AND USE OF THE SITE, (3) ANY
                                    UNAUTHORIZED ACCESS TO OR USE OF OUR SECURE SERVERS AND/OR ANY AND ALL PERSONAL
                                    INFORMATION AND/OR FINANCIAL INFORMATION STORED THEREIN, (4) ANY INTERRUPTION
                                    OR CESSATION OF TRANSMISSION TO OR FROM THE SITE, (5) ANY BUGS, VIRUSES, TROJAN
                                    HORSES, OR THE LIKE WHICH MAY BE TRANSMITTED TO OR THROUGH THE SITE BY ANY
                                    THIRD PARTY, AND/OR (6) ANY ERRORS OR OMISSIONS IN ANY CONTENT AND MATERIALS OR
                                    FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF ANY
                                    CONTENT POSTED, TRANSMITTED, OR OTHERWISE MADE AVAILABLE VIA THE SITE. WE DO
                                    NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR ANY PRODUCT OR
                                    SERVICE ADVERTISED OR OFFERED BY A THIRD PARTY THROUGH THE SITE, ANY
                                    HYPERLINKED WEBSITE, OR ANY WEBSITE OR MOBILE APPLICATION FEATURED IN ANY
                                    BANNER OR OTHER ADVERTISING, AND WE WILL NOT BE A PARTY TO OR IN ANY WAY BE
                                    RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND ANY THIRD-PARTY
                                    PROVIDERS OF PRODUCTS OR SERVICES. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>AS WITH THE PURCHASE OF A PRODUCT OR SERVICE
                                    THROUGH ANY MEDIUM OR IN ANY ENVIRONMENT, YOU SHOULD USE YOUR BEST JUDGMENT AND
                                    EXERCISE CAUTION WHERE APPROPRIATE.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>&nbsp;<o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_fqb34cu3azh2"></a><span
                                    style='font-size:16.0pt;line-height:150%'>LIMITATIONS OF LIABILITY<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>IN NO EVENT WILL WE OR OUR DIRECTORS, EMPLOYEES,
                                    OR AGENTS BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY DIRECT, INDIRECT,
                                    CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL, OR PUNITIVE DAMAGES, INCLUDING
                                    LOST PROFIT, LOST REVENUE, LOSS OF DATA, OR OTHER DAMAGES ARISING FROM YOUR USE
                                    OF THE SITE, EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[NOTWITHSTANDING ANYTHING TO THE CONTRARY
                                    CONTAINED HEREIN, OUR LIABILITY TO YOU FOR ANY CAUSE WHATSOEVER AND REGARDLESS
                                    OF THE FORM OF THE ACTION, WILL AT ALL TIMES BE LIMITED TO [THE LESSER OF] [THE
                                    AMOUNT PAID, IF ANY, BY YOU TO US DURING THE [_________] MONTH PERIOD PRIOR TO
                                    ANY CAUSE OF ACTION ARISING [OR] [$_________]. CERTAIN STATE LAWS DO NOT ALLOW
                                    LIMITATIONS ON IMPLIED WARRANTIES OR THE EXCLUSION OR LIMITATION OF CERTAIN
                                    DAMAGES. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE
                                    ABOVE DISCLAIMERS OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MAY HAVE
                                    ADDITIONAL RIGHTS.]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_2h1ye2p0gimz"></a><span
                                    style='font-size:16.0pt;line-height:150%'>INDEMNIFICATION<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You agree to defend, indemnify, and hold us
                                    harmless, including our subsidiaries, affiliates, and all of our respective
                                    officers, agents, partners, and employees, from and against any loss, damage,
                                    liability, claim, or demand, including reasonable attorneys? fees and expenses,
                                    made by any third party due to or arising out of: (1) [your Contributions]; (2)
                                    use of the Site; (3) breach of these Terms of Use; (4) any breach of your
                                    representations and warranties set forth in these Terms of Use; (5) your
                                    violation of the rights of a third party, including but not limited to
                                    intellectual property rights; or (6) any overt harmful act toward any other
                                    user of the Site with whom you connected via the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Notwithstanding the foregoing, we reserve the
                                    right, at your expense, to assume the exclusive defense and control of any
                                    matter for which you are required to indemnify us, and you agree to cooperate,
                                    at your expense, with our defense of such claims. We will use reasonable
                                    efforts to notify you of any such claim, action, or proceeding which is subject
                                    to this indemnification upon becoming aware of it.&nbsp;<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><span style='mso-spacerun:yes'> </span><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_u44ogvz9wcup"></a><span
                                    style='font-size:16.0pt;line-height:150%'>USER DATA<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>We will maintain certain data that you transmit
                                    to the Site for the purpose of managing the Site, as well as data relating to
                                    your use of the Site. Although we perform regular routine backups of data, you
                                    are solely responsible for all data that you transmit or that relates to any
                                    activity you have undertaken using the Site. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You agree that we shall have no liability to you
                                    for any loss or corruption of any such data, and you hereby waive any right of
                                    action against us arising from any such loss or corruption of such data.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><b style='mso-bidi-font-weight:
                                                                           normal'><span style='font-family:"Arial",sans-serif;mso-fareast-font-family:
                                        Arial'><span style='mso-spacerun:yes'> </span></span></b><span
                                    style='font-family:"Arial",sans-serif;mso-fareast-font-family:Arial'><o:p></o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_lk8uc1f0lu5i"></a><span
                                    style='font-size:16.0pt;line-height:150%'>ELECTRONIC COMMUNICATIONS, TRANSACTIONS,
                                    AND SIGNATURES<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>Visiting the Site, sending us emails, and completing
                                    online forms constitute electronic communications. You consent to receive
                                    electronic communications, and you agree that all agreements, notices,
                                    disclosures, and other communications we provide to you electronically, via
                                    email and on the Site, satisfy any legal requirement that such communication be
                                    in writing. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>YOU HEREBY AGREE TO THE USE OF ELECTRONIC
                                    SIGNATURES, CONTRACTS, ORDERS, AND OTHER RECORDS, AND TO ELECTRONIC DELIVERY OF
                                    NOTICES, POLICIES, AND RECORDS OF TRANSACTIONS INITIATED OR COMPLETED BY US OR
                                    VIA THE SITE. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You hereby waive any rights or requirements
                                    under any statutes, regulations, rules, ordinances, or other laws in any
                                    jurisdiction which require an original signature or delivery or retention of
                                    non-electronic records, or to payments or the granting of credits by any means
                                    other than electronic means. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_5x586ltdk42"></a><span
                                    style='font-size:16.0pt;line-height:150%'>CALIFORNIA USERS AND RESIDENTS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If any complaint with us is not satisfactorily
                                    resolved, you can contact the Complaint Assistance Unit of the Division of
                                    Consumer Services of the California Department of Consumer Affairs in writing
                                    at 1625 North Market Blvd., Suite N 112, Sacramento, California 95834 or by
                                    telephone at (800) 952-5210 or (916) 445-1254.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_xsbb47eal2rb"></a><span
                                    style='font-size:16.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h1>

                            <h1 align=left style='text-align:left;line-height:150%'><span style='font-size:
                                                                                          16.0pt;line-height:150%'>MISCELLANEOUS<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>These Terms of Use and any policies or operating
                                    rules posted by us on the Site constitute the entire agreement and
                                    understanding between you and us. Our failure to exercise or enforce any right
                                    or provision of these Terms of use shall not operate as a waiver of such right
                                    or provision. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>These Terms of Use operate to the fullest extent
                                    permissible by law. We may assign any or all of our rights and obligations to
                                    others at any time. We shall not be responsible or liable for any loss, damage,
                                    delay, or failure to act caused by any cause beyond our reasonable control. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>If any provision or part of a provision of these
                                    Terms of Use is determined to be unlawful, void, or unenforceable, that
                                    provision or part of the provision is deemed severable from these Terms of Use
                                    and does not affect the validity and enforceability of any remaining
                                    provisions. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>There is no joint venture, partnership,
                                    employment or agency relationship created between you and us as a result of
                                    these Terms of Use or use of the Site. You agree that these Terms of Use will
                                    not be construed against us by virtue of having drafted them. <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>You hereby waive any and all defenses you may
                                    have based on the electronic form of these Terms of Use and the lack of signing
                                    by the parties hereto to execute these Terms of Use.<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <h1 align=left style='text-align:left;line-height:150%'><a name="_psz7seomd57z"></a><span
                                    style='font-size:16.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h1>

                            <h1 align=left style='text-align:left;line-height:150%'><span style='font-size:
                                                                                          16.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h1>

                            <h1 align=left style='text-align:left;line-height:150%'><span style='font-size:
                                                                                          16.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></h1>

                            <h1 align=left style='text-align:left;line-height:150%'><span style='font-size:
                                                                                          16.0pt;line-height:150%'>CONTACT US&nbsp;<o:p></o:p></span></h1>

                            <p class=MsoNormal><o:p>&nbsp;</o:p></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>In order to resolve a complaint regarding the
                                    Site or to receive further information regarding use of the Site, please
                                    contact us at:<b style='mso-bidi-font-weight:normal'> </b><o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Corporate Name]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Corporate Address]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Corporate Phone Number]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Corporate Fax Number]<o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'>[Email Address] <o:p></o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                            <table class=a border=0 cellspacing=0 cellpadding=0 width=630 style='border-collapse:
                                   collapse;mso-table-layout-alt:fixed'>
                                <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes'>
                                    <td width=295 valign=top style='width:221.5pt;padding:.75pt .75pt .75pt .75pt'>
                                        <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                                          mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>
                                    </td>
                                    <td width=39 valign=top style='width:29.5pt;padding:.75pt .75pt .75pt .75pt'>
                                        <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                                          mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>
                                    </td>
                                    <td width=295 valign=top style='width:221.5pt;padding:.75pt .75pt .75pt .75pt'>
                                        <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                                          mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>
                                    </td>
                                </tr>
                            </table>

                            <p class=MsoNormal style='line-height:150%'><span style='font-family:"Arial",sans-serif;
                                                                              mso-fareast-font-family:Arial'><o:p>&nbsp;</o:p></span></p>

                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>                       

        <!-- jQuery -->
        <script src="assets/vendor/jquery.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/vendor/popper.min.js"></script>
        <script src="assets/vendor/bootstrap.min.js"></script>

        <!-- Perfect Scrollbar -->
        <script src="assets/vendor/perfect-scrollbar.min.js"></script>

        <!-- MDK -->
        <script src="assets/vendor/dom-factory.js"></script>
        <script src="assets/vendor/material-design-kit.js"></script>

        <!-- App JS -->
        <script src="assets/js/app.js"></script>

        <!-- Highlight.js -->
        <script src="assets/js/hljs.js"></script>

        <!-- App Settings (safe to remove) -->
        <script src="assets/js/app-settings.js"></script>

    </body>

</html>
