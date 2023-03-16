{
    var key
    key=argument0;

    //STATS    
      
        
        global.session_id = xboxone_generate_player_session_id();  
        global.uid = xboxone_user_id_for_user(global.xb_user);     
    
        
            if (xboxone_user_is_signed_in(global.xb_user))
            {
                xboxone_stats_setup(global.xb_user,global.service_config,global.title_id);
                xboxone_check_privilege(global.xb_user, xboxone_privilege_multiplayer_sessions, true);
                global.signed_in=true;
            }
            else
            {
                global.signed_in=false;
            }     
        
            
    switch(key)
    {
    case 0: /*STARTUP INIT*/ 
    //RICH PRESENCE
    xboxone_set_rich_presence(global.xb_user, true, "IntroRichPresence");
    break;          
    case 1:  result = xboxone_fire_event("QuickReflexesEvent", global.uid,  global.session_id ,1); break;
    case 2:  result = xboxone_fire_event("TenChainEvent", global.uid,  global.session_id ,1); break; 
    case 3:  result = xboxone_fire_event("FifteenChainEvent", global.uid,  global.session_id ,1); break;
    case 4:  result = xboxone_fire_event("TwentyChainEvent", global.uid,  global.session_id ,1); break;
    case 5:  result = xboxone_fire_event("AGameEvent", global.uid,  global.session_id ,1); break; 
    case 6:  result = xboxone_fire_event("SpeedRunEvent", global.uid,  global.session_id ,1); break; 
    case 7:  result = xboxone_fire_event("DefeatMrSmilesEvent", global.uid,  global.session_id ,1); break;  
    case 8:  result = xboxone_fire_event("DefeatDoomflayerEvent", global.uid,  global.session_id ,1); break; 
    case 9:  result = xboxone_fire_event("DefeatRabiesRabbitEvent", global.uid,  global.session_id ,1); break;  
    case 10: result = xboxone_fire_event("DefeatCreeperEvent", global.uid,  global.session_id ,1); break;  
    case 11: result = xboxone_fire_event("DefeatMrGrinEvent", global.uid,  global.session_id ,1); break; 
    case 12: result = xboxone_fire_event("DefeatMechasmilesEvent", global.uid,  global.session_id ,1); break;
    case 13: result = xboxone_fire_event("DefeatRazormouthEvent", global.uid,  global.session_id ,1); break; 
    case 14: result = xboxone_fire_event("DefeatGrimeboyEvent", global.uid,  global.session_id ,1); break; 
    case 15: result = xboxone_fire_event("DefeatKraroxEvent", global.uid,  global.session_id ,1); break;
    case 16: result = xboxone_fire_event("DefeatFlameFreakEvent", global.uid,  global.session_id ,1); break;
    case 17: result = xboxone_fire_event("DefeatDawnwingEvent", global.uid,  global.session_id ,1); break;
    case 18: result = xboxone_fire_event("DefeatMegabotEvent", global.uid,  global.session_id ,1); break;
    case 19: result = xboxone_fire_event("DefeatPSYDragonEvent", global.uid,  global.session_id ,1); break;
    case 20: result = xboxone_fire_event("DefeatSinEvent", global.uid,  global.session_id ,1); break;
    
    case 21: //HARDCORE SCORE
    result = xboxone_fire_event("HardcoreScore", global.uid,  global.session_id ,global.Points); break;
    break;
    
    case 22: //GAME PROGRESS
    var progression=0;
    var c;
        for (c=1;c<15;c+=1)
        {
            progression+=global.world_clear[c]; //WHICH WORLDS HAVE BEEN BEATEN
        }               
    progression=round(progression*7.14); //6.67
     
    if (progression>100) progression=100;
    result = xboxone_fire_event("GameProgress", global.uid,  global.session_id , progression); break;
    break;
    
    case 23: //HIGH SCORE + HIGH TIME
    //result_a = xboxone_fire_event("PlayerHighScore", global.uid,  global.session_id , global.Points); break;
    result_a = xboxone_fire_event("SendScoreEvent", global.uid,  global.session_id , global.Points); 
    
    //MONEY
    if instance_exists(par_HERO)
    {
    result_b = xboxone_fire_event("SendMoneyEvent", global.uid,  global.session_id , par_HERO.money); 
     //MAX CHAIN   
    result_c = xboxone_fire_event("SendChainEvent", global.uid,  global.session_id , par_HERO.max_chain); 
    }
            
    var minutes;
    minutes=(60*global.Hours)+global.Minutes + round(global.Seconds);
    //result_b = xboxone_fire_event("PlayerTime", global.uid,  global.session_id , minutes); 
    break;  
    
    case 24: //MAX CHAIN ONLY
    if instance_exists(par_HERO)
    {
    result_c = xboxone_fire_event("SendChainEvent", global.uid,  global.session_id , par_HERO.max_chain); 
    }
    break;  
    }
          

}

