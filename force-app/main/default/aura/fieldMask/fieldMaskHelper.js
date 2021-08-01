({
	applayMask : function(label,input,value,keycode) {
		 value += keycode;
        if(label == 'phone'){
            let x = value.replace(/\D/g, '').match(/(\d{0,2})(\d{0,5})(\d{0,4})/);
            let phoneMask =!x[2] ? x[1] : '(' + x[1] + ') ' + x[2] + (x[3] ? '-' + x[3] : '');
            input.set('v.value',phoneMask);
        }else{
            let x = value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,3})(\d{0,3})(\d{0,2})/);
            let phoneMask =!x[2] ? x[1] : x[1] + '.' + x[2] + '.' + x[3] + (x[4] ? '-' + x[4] : '');
            input.set('v.value',phoneMask);          
        }
        
	}
})