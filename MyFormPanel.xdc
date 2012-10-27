{
    "xdsVersion": "2.1.0",
    "frameworkVersion": "touch20",
    "internals": {
        "type": "formpanel",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "designer|userClassName": "DirectTransfer",
            "designer|userAlias": "directTransferAlias",
            "id": "directTransfer",
            "itemId": "directTransfer",
            "style": null,
            "scrollable": [
                "{",
                "    direction: 'vertical',",
                "    directionLock: true",
                "}"
            ],
            "url": null
        },
        "cn": [
            {
                "type": "toolbar",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyToolbar",
                    "designer|displayName": "DirectTransferToolbar",
                    "docked": "top",
                    "title": "Shake & Pay"
                },
                "cn": [
                    {
                        "type": "button",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "designer|userClassName": "MyButton2",
                            "designer|displayName": "LogoutButton",
                            "id": "logoutButton",
                            "itemId": "logoutButton",
                            "text": "Close"
                        }
                    }
                ]
            },
            {
                "type": "hiddenfield",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyHiddenField1",
                    "designer|displayName": "UserIdField",
                    "id": "userIdField",
                    "itemId": "userIdField",
                    "name": "userId"
                }
            },
            {
                "type": "hiddenfield",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyHiddenField2",
                    "designer|displayName": "UserNameField",
                    "id": "userNameField",
                    "itemId": "userNameField",
                    "name": "name"
                }
            },
            {
                "type": "hiddenfield",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyHiddenField3",
                    "designer|displayName": "UserLastnameField",
                    "id": "userLastnameField",
                    "itemId": "userLastnameField",
                    "name": "lastname"
                }
            },
            {
                "type": "hiddenfield",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyHiddenField4",
                    "designer|displayName": "LatField",
                    "id": "latField",
                    "itemId": "latField",
                    "name": "lat"
                }
            },
            {
                "type": "hiddenfield",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyHiddenField5",
                    "designer|displayName": "LonField",
                    "id": "lonField",
                    "itemId": "lonField",
                    "name": "lon"
                }
            },
            {
                "type": "fieldset",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyFieldSet",
                    "title": "Amount"
                },
                "cn": [
                    {
                        "type": "numberfield",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "designer|userClassName": "MyNumberField1",
                            "designer|displayName": "AmountField",
                            "id": "amountField",
                            "itemId": "amountField",
                            "style": null,
                            "inputCls": "inputLarge",
                            "label": null,
                            "labelAlign": null,
                            "name": "amount"
                        },
                        "cn": [
                            {
                                "type": "basiceventbinding",
                                "reference": {
                                    "name": "listeners",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "designer|userClassName": "onAmountFieldChange",
                                    "fn": "onAmountFieldChange",
                                    "implHandler": [
                                        "var text = 'Send money';",
                                        "var ui = 'decline';",
                                        "if (newValue === \"\") {",
                                        "    text = 'Receive money';",
                                        "    ui = 'confirm';",
                                        "}",
                                        "Ext.getCmp('searchTransferButton').setUi(ui);",
                                        "Ext.getCmp('searchTransferButton').setText(text);",
                                        ""
                                    ],
                                    "name": "change"
                                }
                            }
                        ]
                    }
                ]
            },
            {
                "type": "fieldset",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyFieldSet2",
                    "hidden": true,
                    "title": "Concept"
                },
                "cn": [
                    {
                        "type": "textfield",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "designer|userClassName": "MyTextField",
                            "designer|displayName": "ConceptField",
                            "id": "conceptField",
                            "itemId": "conceptField",
                            "label": null,
                            "labelAlign": null,
                            "name": "concept",
                            "value": [
                                "Shake & Pay"
                            ]
                        }
                    }
                ]
            },
            {
                "type": "fieldset",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyFieldSet5",
                    "title": "Account number"
                },
                "cn": [
                    {
                        "type": "hiddenfield",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "designer|userClassName": "MyHiddenField",
                            "designer|displayName": "AccountHiddenField",
                            "id": "accountHiddenField",
                            "itemId": "accountHiddenField",
                            "name": "accn"
                        }
                    }
                ]
            },
            {
                "type": "carousel",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyCarousel",
                    "designer|displayName": "AccountCarousel",
                    "height": "125px",
                    "id": "accountCarousel",
                    "itemId": "accountCarousel",
                    "scrollable": false,
                    "direction": null
                }
            },
            {
                "type": "button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyButton7",
                    "designer|displayName": "SearchTransferButton",
                    "cls": "mainButton",
                    "id": "searchTransferButton",
                    "itemId": "searchTransferButton",
                    "ui": "confirm",
                    "text": "Receive money"
                }
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {}
}