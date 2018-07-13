# lcUtility

### Deploy to your org

You can either change `lcUtility.resource` to `lcUtility.js` and go to Setup > Static Resources > New, call it whatever you want and upload it. If you want to get it into your org fast and have [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli) installed, type the following using the terminal while in the cloned directory of your machine:

- `sfdx force:mdapi:deploy -d . -u orgAlias -w 100`

To be able to use `lcUtility`, add the following line to the Component part of your Aura Definition Bundle: `<ltng:require scripts="{!$Resource.lcUtility}" />`. If you uploaded `lcUtility` !using Salesforce CLI, it will be `<ltng:require scripts="{!$Resource.theNameYouChose}" />`

To use the functions anywhere in the Controller or Helper parts of your Aura Definition Bundle use `lcUtility`. E.g. `lcUtility.showToastError('Danger, Will Robinson! 🚨');`

