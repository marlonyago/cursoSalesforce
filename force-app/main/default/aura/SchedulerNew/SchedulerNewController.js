({
	doInit : function(component, event, helper) {
        helper.toggleTwoAndThreeSteps(component);
        component.set("v.progressIndicatorFlag", "step1");
    },
})