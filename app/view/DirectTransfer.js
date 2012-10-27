/*
 * File: app/view/DirectTransfer.js
 *
 * This file was generated by Sencha Architect version 2.1.0.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Sencha Touch 2.0.x library, under independent license.
 * License of Sencha Architect does not include license for Sencha Touch 2.0.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('MyApp.view.DirectTransfer', {
    extend: 'Ext.form.Panel',
    alias: 'widget.directTransferAlias',

    config: {
        id: 'directTransfer',
        itemId: 'directTransfer',
        padding: '10px',
        scrollable: false,
        items: [
            {
                xtype: 'toolbar',
                docked: 'top',
                title: 'Shake & Pay (Commerce)'
            },
            {
                xtype: 'hiddenfield',
                id: 'userIdField',
                itemId: 'userIdField',
                name: 'userId'
            },
            {
                xtype: 'hiddenfield',
                id: 'userNameField',
                itemId: 'userNameField',
                name: 'name'
            },
            {
                xtype: 'hiddenfield',
                id: 'userLastnameField',
                itemId: 'userLastnameField',
                name: 'lastname'
            },
            {
                xtype: 'hiddenfield',
                id: 'latField',
                itemId: 'latField',
                name: 'lat'
            },
            {
                xtype: 'hiddenfield',
                id: 'lonField',
                itemId: 'lonField',
                name: 'lon'
            },
            {
                xtype: 'fieldset',
                title: 'Amount',
                items: [
                    {
                        xtype: 'numberfield',
                        id: 'amountField',
                        itemId: 'amountField',
                        style: 'text-align: right;',
                        inputCls: 'inputLarge',
                        labelAlign: 'right',
                        name: 'amount',
                        value: '125.95 €',
                        readOnly: true
                    }
                ]
            },
            {
                xtype: 'fieldset',
                title: 'Items purchased',
                items: [
                    {
                        xtype: 'checkboxfield',
                        label: 'Capuccino',
                        labelWidth: '80%'
                    },
                    {
                        xtype: 'checkboxfield',
                        label: 'Orange Juice',
                        labelWidth: '80%'
                    },
                    {
                        xtype: 'checkboxfield',
                        label: 'Extra caffeine',
                        labelWidth: '80%'
                    }
                ]
            },
            {
                xtype: 'button',
                cls: 'mainButton',
                id: 'searchTransferButton',
                itemId: 'searchTransferButton',
                ui: 'confirm',
                text: 'Get Paid'
            }
        ],
        listeners: [
            {
                fn: 'onAmountFieldChange',
                event: 'change',
                delegate: '#amountField'
            },
            {
                fn: 'onSearchTransferButtonTap',
                event: 'tap',
                delegate: '#searchTransferButton'
            }
        ]
    },

    onAmountFieldChange: function(textfield, newValue, oldValue, options) {
        var text = 'Send money';
        var ui = 'decline';
        if (newValue === "") {
            text = 'Receive money';
            ui = 'confirm';
        }
        Ext.getCmp('searchTransferButton').setUi(ui);
        Ext.getCmp('searchTransferButton').setText(text);

    },

    onSearchTransferButtonTap: function(button, e, options) {
        var me = this;
        Ext.Viewport.setMasked({
            xtype: 'loadmask',
            message: ' Contacting payer '
        });

        // simulate event
        setTimeout(function(){
            var panel = MyApp.app.getController('MainController').getView('payerPanel');
            Ext.Viewport.add(panel);

            var data = {};
            data.name = 'Víctor';
            data.lastname = 'Jordán';
            data.amount = '125.95';
            panel.setData(data);

            panel.show();
            Ext.Viewport.setMasked(false);

        },3000);


    }

});