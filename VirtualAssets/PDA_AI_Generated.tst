---
parasoftVersion: 2025.1.0
productVersion: 10.7.2
schemaVersion: 3
suite:
  $type: TestSuite
  name: Test Suite
  hasEnvironmentConfig: true
  environmentConfig:
    environments:
    - variables:
      - name: OPENAPI
        value: http://localhost:4040/pda/api-docs/v1-proxy
      - name: BASEURL
        value: http://localhost:4040
      name: localhost:4040
      active: true
  lastModifiedBy: rmartinez
  authentications:
  - $type: BasicAuthentication
    name: Basic
    username:
      fixedValue:
        $type: StringTestValue
        username: purchaser
    password:
      fixedValue:
        $type: PasswordTestValue
        password: AwAAACx4YXhJU3NQdUtXUkFoUCtIMld0c1lib0JWN3EwSW9ialFiaXhxWndPMi9vPQ==
  notes: |
    Created from: http://localhost:4040/pda/api-docs/v1-proxy
    Timestamp: 2025-04-24 15:32:37

    This scenario adds two parameterized items to the cart, submits the order, and verifies the order placement.
     - POST /proxy/v1/cartItems (Add the first item to the cart using the parameters for item ID and quantity from the data source.)
     - POST /proxy/v1/cartItems (Add the second item to the cart using the parameters for item ID and quantity from the data source.)
     - POST /proxy/v1/orders (Submit the order for the items currently in the cart.)
     - GET /proxy/v1/orders/{orderNumber} (Verify that the order has been placed by retrieving the order details using the order number obtained from the order submission response.)
  dataSources:
  - id: ds_1745534016542_659631700
    impl:
      $type: CSVDataSource
      file: true
      fileObj:
        path: PDA_AI_Generated_generated_data_source.csv
      data: true
      columnNames:
      - Item ID 1
      - Item ID 2
      - Quantity 1
      - Quantity 2
      - Region
    name: Generated Data Source
    useAllRows: true
    lastRow: -1
  tests:
  - $type: TestSuite
    name: /pda/api-docs/v1-proxy
    testID: 1
    tests:
    - $type: TestSuite
      name: "This scenario adds two parameterized items to the cart, submits the order,\
        \ and verifies the order placement."
      testID: 2
      tests:
      - $type: RESTClientToolTest
        name: /proxy/v1/cartItems - POST
        testID: 3
        tool:
          $type: RESTClient
          dataSourceNames:
          - Generated Data Source
          iconName: RESTClient
          name: /proxy/v1/cartItems - POST
          outputTools:
          - $type: GenericDataBank
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/itemId[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: "Test 1: itemId"
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                localName: root
                bodyType:
                  $type: ComplexType
                  attributes:
                  - ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      _id: 1
                    required: true
                  name: /components/schemas/ShoppingCartDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    types:
                    - $type: ElementType
                      minOccurs: 0
                      localName: itemId
                      bodyType:
                        $type: ComplexType
                        attributes:
                        - ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            _ref: 1
                          required: true
                        content: true
                        contentObj:
                          $type: LongType
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                    - $type: ElementType
                      minOccurs: 0
                      localName: itemQty
                      bodyType:
                        $type: ComplexType
                        attributes:
                        - ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            _ref: 1
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        mode: 3
                        columnName: Item ID 1
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: LongValue
                            replacedColumn: ""
                            mode: 3
                            columnName: Item ID 1
                            value: 1
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        mode: 3
                        columnName: Quantity 1
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            mode: 3
                            columnName: Quantity 1
                            value: 5
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:4040/pda/api-docs/v1-proxy
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${OPENAPI}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                localName: ""
                bodyType:
                  $type: ComplexType
                  name: anonymous
                  compositor: true
                  compositorObj:
                    $type: SequenceCompositor
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"itemId\":1,\"itemQty\":5}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: proxy
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /proxy/v1/cartItems
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        name: /proxy/v1/cartItems - POST
        testID: 4
        tool:
          $type: RESTClient
          dataSourceNames:
          - Generated Data Source
          iconName: RESTClient
          name: /proxy/v1/cartItems - POST
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        mode: 3
                        columnName: Item ID 2
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: LongValue
                            replacedColumn: ""
                            mode: 3
                            columnName: Item ID 2
                            value: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        mode: 3
                        columnName: Quantity 2
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            mode: 3
                            columnName: Quantity 2
                            value: 10
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:4040/pda/api-docs/v1-proxy
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${OPENAPI}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"itemId\":2,\"itemQty\":10}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: proxy
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /proxy/v1/cartItems
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        name: /proxy/v1/orders - POST
        testID: 5
        tool:
          $type: RESTClient
          dataSourceNames:
          - Generated Data Source
          iconName: RESTClient
          name: /proxy/v1/orders - POST
          outputTools:
          - $type: GenericDataBank
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/orderNumber[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: "Test 3: orderNumber"
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                localName: root
                bodyType:
                  $type: ComplexType
                  attributes:
                  - ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      _id: 1
                    required: true
                  name: /components/schemas/OrderDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    types:
                    - $type: ElementType
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        attributes:
                        - ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            _ref: 1
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          values:
                          - '"UNITED_STATES"'
                          - '"UNITED_KINGDOM"'
                          - '"GERMANY"'
                          - '"FRANCE"'
                          - '"JAPAN"'
                          - '"SOUTH_KOREA"'
                          - '"SPAIN"'
                          - '"AUSTRALIA"'
                          - '"MERCURY"'
                          - '"VENUS"'
                          - '"EARTH"'
                          - '"MARS"'
                          - '"JUPITER"'
                          - '"SATURN"'
                          - '"URANUS"'
                          - '"NEPTUNE"'
                          - '"LOCATION_1"'
                          - '"LOCATION_2"'
                          - '"LOCATION_3"'
                          - '"LOCATION_4"'
                          - '"LOCATION_5"'
                          - '"LOCATION_6"'
                          - '"LOCATION_7"'
                          - '"LOCATION_8"'
                          baseType: anonymous
                        name: /components/schemas/OrderDTO/properties/region
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                    - $type: ElementType
                      minOccurs: 0
                      localName: location
                      bodyType:
                        $type: ComplexType
                        _id: 2
                        attributes:
                        - ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            _ref: 1
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          _ref: 1
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                    - $type: ElementType
                      minOccurs: 0
                      localName: receiverId
                      bodyType:
                        $type: ComplexType
                        _ref: 2
                    - $type: ElementType
                      minOccurs: 0
                      localName: eventId
                      bodyType:
                        $type: ComplexType
                        _ref: 2
                    - $type: ElementType
                      minOccurs: 0
                      localName: eventNumber
                      bodyType:
                        $type: ComplexType
                        _ref: 2
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        mode: 3
                        columnName: Region
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: enum
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                            mode: 3
                            columnName: Region
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: New York
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: R123456
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: E7890
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: EN001
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:4040/pda/api-docs/v1-proxy
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${OPENAPI}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              outputTools:
              - $type: GenericDataBank
                iconName: XMLDataBank
                name: JSON Data Bank
                wrappedTool:
                  $type: XMLtoDataSource
                  iconName: XMLDataBank
                  name: XML Data Bank
                  selectedXPaths:
                  - elementOption: 1
                    contentOption: 1
                    XMLDataBank_ExtractXPath: "/root/receiverId[1]/text()"
                    mode: 1
                  canonicalizeOutput: true
                  xmlMessage: true
                  virtualDSCreator:
                    writableColumns:
                    - customName: receiverId
                conversionStrategy:
                  dataFormatName: JSON
                  conversionStrategyId: JSON
                  conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"region\":\"UNITED_STATES\",\"location\"\
                :\"New York\",\"receiverId\":\"R123456\",\"eventId\":\"E7890\",\"\
                eventNumber\":\"EN001\"}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: proxy
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: orders
          resourceMethod:
            resourceId: /proxy/v1/orders
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        name: "/proxy/v1/orders/{orderNumber} - GET"
        testID: 6
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/proxy/v1/orders/{orderNumber} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                localName: root
                bodyType:
                  $type: ComplexType
                  attributes:
                  - ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:4040/pda/api-docs/v1-proxy
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${OPENAPI}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/{orderNumber}"
          transportProperties:
            manager:
              protocol: 1
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: proxy
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: orders
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{orderNumber}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                localName: orderNumber
                bodyType:
                  $type: StringType
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                mode: 3
                columnName: "Test 3: orderNumber"
                value: ""
          resourceMethod:
            resourceId: "/proxy/v1/orders/{orderNumber}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
