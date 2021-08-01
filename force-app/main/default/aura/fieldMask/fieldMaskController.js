({
	keyMask : function(component, event, helper) {
 		let label = event.target.className;              
        let input = component.find(label);
		let value = input.get('v.value');
        let keycode = event.key;
        
        const allowed = ['0','1','2','3','4','5','6','7','8','9'];
        const actions = ['Backspace','Delete','ArrowRight','ArrowLeft','Tab'];
        
        if (!event.metaKey && !actions.includes(keycode)){
            event.preventDefault();
          }
        
        if(allowed.includes(keycode)){
            if( value != undefined && value != ""){
             	helper.applayMask(label,input,value,keycode);
            }else{
               input.set('v.value', keycode); 
            }
        }
        
        
        
	}
})