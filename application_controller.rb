require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/quiz' do
    erb :quiz
  end
  
  get '/about' do
    erb :about
  end
  
  post '/answer' do
    username=params[:name]
    @user_name=username.capitalize
    puts @user_name
    v1=params[:q1]
    v2=params[:q2]
    v3=params[:q3]
    p v3
    @user_ans = total(v1, v2, v3)
    p @user_ans
    if @user_ans == 3110
      organizationName="Women & Their Work"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName}</a> </b> is the organization we've calculated that works best for you!"
      descrip="Women & Their Work is a visual and performing art organization located in Central Austin that serves as a catalyst for contemporary art created by women living and working in Texas and beyond. For over 38 years, Women & Their Work has brought groundbreaking art to Austin, with exhibitions, performances, and educational workshops."
      img="http://silkroadaustin.com/wp-content/uploads/2014/07/Women-and-Their-Work-224x300.jpg"
      url="http://www.womenandtheirwork.org/"
    elsif @user_ans == 4110
      organizationName="National Organization for Women"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="As the grassroots arm of the women’s movement, the National Organization for Women is dedicated to its multi-issue and multi-strategy approach to women’s rights, and is the largest organization of feminist grassroots activists in the United States. NOW has hundreds of chapters and hundreds of thousands of members and activists in all 50 states and the District of Columbia. Since our founding in 1966, NOW’s purpose is to take action through intersectional grassroots activism to promote feminist ideals, lead societal change, eliminate discrimination, and achieve and protect the equal rights of all women and girls in all aspects of social, political, and economic life."
      img="https://northcarolinanow.files.wordpress.com/2015/11/nowlogo.gif"
      url="http://now.org/"
    elsif @user_ans == 3210
      organizationName="Girlstart"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="We increase girls’ interest and engagement in STEM through innovative, nationally-recognized informal STEM education programs. By empowering more girls to continue STEM studies, we can help address our nation’s STEM workforce inequities and impact innovation and economic development in America and across the globe. To accomplish our mission, Girlstart develops and implements a range of innovative, research- and standards-based education and mentorship programs designed to promote girls’ early engagement and academic success in STEM, encourage girls' aspirations and persistence in STEM education and careers, and incubate a talented and diverse STEM workforce."
      img="http://ih.constantcontact.com/fs004/1101376239733/img/471.jpg?a=1111002273784"
      url="http://www.girlstart.org/"
    elsif @user_ans == 4210
      organizationName="Girl Scouts"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="Girl Scouting builds girls of courage, confidence, and character, who make the world a better place. We’re the preeminent leadership development organization for girls. And with programs from coast to coast and across the globe, Girl Scouts offers every girl a chance to practice a lifetime of leadership, adventure, and success."
      img="https://goodlogo.com/images/logos/girl_scouts_logo_3064.gif"
      url="http://www.girlscouts.org/"
    elsif @user_ans == 3120
      organizationName="Out Youth Austin"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="Out Youth serves the Central Texas LGBTQ+ (lesbian/gay/bisexual, transgender, queer and questioning) youth and their allies with programs and services to ensure these promising young people develop into happy, healthy, successful adults. <br> <br>

Founded in 1990, Out Youth has grown and changed over the years, but we’ve always retained our most important facet – providing a safe space for LGBTQ+ youth to come together, receive support, and make friends who understand who they are. <br> <br>

We host a variety of programs and services for youth, and provide trainings and resources for parents, teachers and community members."
      img="https://amalafoundation.org/wp-content/uploads/2014/01/999888_587467947969082_1422246833_n.jpg"
      url=" https://www.outyouth.org"
    elsif @user_ans == 4120
      organizationName="Gay Center"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="The Center fosters a welcoming environment where everyone is celebrated for who they are. We offer the LGBT communities of NYC health and wellness programs; arts, entertainment and cultural events; recovery, wellness, parenthood and family support services."
      img="https://gaycenter.org/image/timeline/1983/Center_logo.jpg"
      url=" https://gaycenter.org"
    elsif @user_ans == 3220
      organizationName="Austin Pride"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="The Austin Gay and Lesbian Pride Foundation (AGLPF) formed the Austin PRIDE Caresprogram in 2011 to further its mission to educate, resource, and connect the lesbian, gay, bisexual, transgender, and queer (LGBTQ) community in Austin, Texas.  A component of the program includes the board evaluating its financials annually, and, if practicable, donating surplus Austin PRIDE celebration proceeds back into the community."
      img="http://purpleroofs.com/gay-travel-blog/wp-content/uploads/2013/08/austin-pride.png"
      url="http://www.austinpride.org/"
    elsif @user_ans == 4220
      organizationName="LGBTQ Connections"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="Napa and Sonoma Counties are only an hour north of San Francisco, but they are world's apart in terms of visibility and community for the lesbian, gay, bisexual, transgender, queer and questioning people in those communities. To address the glaring lack of resources and inclusion, LGBTQ Connection was born in the Spring of 2011.<br> <br>
LGBTQ Connection, an initiative fueled by youth and other emerging leadership, fosters a healthier, more vibrantly diverse and inclusive community. Each year, LGBTQ Connection engages 3,500 LGBTQ people, their families and community, and trains 500 providers from local organizations across Northern California to increase the safety, visibility and well being of LGBTQ residents. In Napa and Sonoma Counties the program operates local LGBTQ community centers, supporting underserved LGBTQ youth and elders. The Napa and Sonoma offices of LGBTQ Connection each provide a safe and trusted space to cultivate hubs of vibrant activities and caring community."
      img="http://static1.squarespace.com/static/56272f0ce4b0cf8fdb344f10/t/577c3f856a4963d30fb6e517/1496965532312/?format=1500w"
      url=""
      url="http://www.lgbtqconnection.org"
    elsif @user_ans == 3130
      organizationName="Amala Foundation"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="The Amala Foundation unites youth from all walks of life and empowers them to grow as individuals and as leaders in service to humanity. Amala’s programs focus on young individuals including refugees and immigrant youth, many of whom have experienced war, abuse, neglect, extreme poverty, child labor, and gang violence; and provide them the opportunity to unite with peers from vastly different backgrounds and participate in meaningful dialogue, community building exercises, and leadership development."
      img="http://amalafoundation.namasteinteractive.com/images/masthead_2.jpg"
      url="https://amalafoundation.org"
    elsif @user_ans == 4130
      organizationName="American Refugee Committee (ARC)"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="ARC works with its partners and constituencies to provide opportunities and expertise to refugees, displaced people and host communities. We help people survive conflict and crisis and rebuild lives of dignity, health, security and self-sufficiency. ARC is committed to the delivery of programs that ensure measurable quality and lasting impact for the people we serve."
      img="https://www.guidestar.org/ViewEdoc.aspx?eDocId=1583099&approved=True"
      url="http://arcrelief.org"
    elsif @user_ans == 3230
      organizationName="AMAANAH Refugee Services"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="We are consistently growing and evolving to meet the long-term needs of women and children who have arrived through the refugee resettlement process. Our mission is to integrate resettled refugees into their new homes and communities."
      img="http://www.mashouston.org/Portals/0/Amaanah-logo-color.png"
      url="https://refugeelink.com"
    elsif @user_ans == 4230
      organizationName="Refugees International (RI)"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="OUR MISSION IS TO BE A POWERFUL VOICE FOR LIFESAVING ACTION. <br> 
Refugees International advocates for lifesaving assistance and protection for displaced people and promotes solutions to displacement crises. We are an independent organization, and do not accept any government or UN funding."
      img="http://www.progressivelawyer.com/wp-content/uploads/2015/02/RI_Logo2c_corr_hires.jpg"
      url="https://www.refugeesinternational.org"
    elsif @user_ans == 3140
      organizationName="Eden Animal Sanctuary"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip=" Eden Animal Sanctuary is dedicated to the rescue and rehabilitation of neglected, abused, injured or unwanted captive chelonians (turtles & tortoises). We are passionate about educating the public about proper chelonian care and matching our rescued animals with qualified, permanent new keepers."
      img="https://user-content.givegab.com/uploads/group/logo/441247/8d4e4f8ee3a9d6006192710854c415778e0f637f.png"
      url="http://www.edenanimalsanctuary.com "
    elsif @user_ans == 4140 
      organizationName="Vegan Outreach"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="Vegan Outreach seeks a future when sentient animals are no longer exploited as commodities. Vegan Outreach focuses on exposing the suffering of farmed animals through the widespread distribution of our booklets promoting plant-based eating."
      img="http://teamvegan.org/images/2015/VO_Logo-480px-Sep14.png"
      url="https://veganoutreach.org "
    elsif @user_ans == 3240
      organizationName="PAWS of Austin"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="PAWS' mission is to prevent cruelty to all animals by promoting humane standards through education and example, to provide care and shelter for homeless animals, aid in the reduction of domestic animal overpopulation, and aid in the enforcement of laws, including the investigation of animal cruelty and abuse. Our main goal is to provide the best possible care for the animals while in our custody and finding them new permanent, loving homes. Our attempts to place homeless animals into good homes help not only the animal but also provide a new owner with a loving companion and possibly a memorable life experience."
      img="http://www.petsionary.com/wp-content/uploads/pa/paw-print-graphics.jpg"
      url="http://www.pawsofaustin.org"
    elsif @user_ans == 4240
      organizationName="Animal Equality"
       welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{organizationName} </b> is the organization we've calculated that works best for you!"
      descrip="Animal Equality is an international organization working with society, governments and companies to end cruelty to farmed animals. Our vision is a world in which all animals are respected and protected. Through investigations, corporate outreach, legal advocacy and education Animal Equality aims at sparing animal suffering."
      img="https://animalcharityevaluators.org/wp-content/uploads/2016/08/logo-animal-equality-2400x24002400x2400.jpg"
      url="http://www.animalequality.net "
    else
       welcome ="In order to get a solution you must complete all the answers to the test"
       img="https://blog.sqlauthority.com/i/a/errorstop.png"
    end
    @results=[welcome, organizationName, descrip, img, url]
    erb :answer
  end

end
