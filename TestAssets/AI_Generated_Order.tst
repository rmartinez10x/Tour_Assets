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
    Timestamp: 2025-05-13 10:10:59

    This test scenario adds two items to the cart, submits an order, and verifies that the order has been placed. The items and quantities are parameterized using a data source, and the region is set to 'LOCATION_1'.
     - POST /proxy/v1/cartItems (Add the first item to the cart using the item ID and quantity from the data source.)
     - POST /proxy/v1/cartItems (Add the second item to the cart using the item ID and quantity from the data source.)
     - POST /proxy/v1/orders (Submit the order with the items in the cart and specify the region parameterized as 'LOCATION_1'.)
     - GET /proxy/v1/orders (Verify that the order has been placed by checking the list of orders.)
  dataSources:
  - id: ds_1747156289912_1416402625
    impl:
      $type: CSVDataSource
      file: true
      fileObj:
        path: AI_Generated_Order_generated_data_source.csv
      data: true
      columnNames:
      - Item ID 1
      - Quantity 1
      - Item ID 2
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
      name: "This test scenario adds two items to the cart, submits an order, and\
        \ verifies that the order has been placed. The items and quantities are parameterized\
        \ using a data source, and the region is set to 'LOCATION_1'."
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
                            value: 6
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
                saveTraffic: true
                testRuns:
                - sequences:
                  - invocations:
                    - requestTimeNanos: 7726269511600
                      responseTimeNanos: 7726284768000
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjIsIml0ZW1RdHkiOjZ9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MTksInVzZXJJZCI6MSwiaXRlbUlkIjoyLCJuYW1lIjoiR3JlZW4gU2xlZXBpbmcgQmFnIiwiZGVzY3JpcHRpb24iOiJUaGlzIGxpZ2h0IHdlaWdodCBzbGVlcGluZyBiYWcgaGFzIGEgdGVtcGVyYXR1cmUgcmF0aW5nIG9mIDM1IGRlZ3JlZXMuIEl0IGlzIHZlcnkgY29tcGFjdCB3aGVuIHJvbGxlZCB1cC4gR29vZCBmb3IgYmFja3BhY2tpbmcgdHJpcHMuIiwiaW1hZ2UiOiIvb3V0ZG9vci9pbWFnZXMvZGVmYXVsdEltYWdlLnBuZyIsInJlYWxJblN0b2NrIjo5OTQsInF1YW50aXR5Ijo2fX0=
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156325430
                      writeResponseTime: true
                      responseTime: 1747156325445
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 2
                      - Quantity 1
                      - 6
                      row:
                        refs:
                        - first: false
                          last: true
                          dataSourceName: Generated Data Source
                          row: 10
                        first: false
                  - invocations:
                    - requestTimeNanos: 7726161013200
                      responseTimeNanos: 7726175175900
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjgsIml0ZW1RdHkiOjl9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MTcsInVzZXJJZCI6MSwiaXRlbUlkIjo4LCJuYW1lIjoiNCBQZXJzb24gVGVudCIsImRlc2NyaXB0aW9uIjoiVGhpcyB0ZW50IGlzIGdvb2QgZm9yIHNtYWxsIGdyb3VwIG9yIHNtYWxsIGZhbWlseSBjYW1waW5nIHRyaXBzLiBDb21mb3J0YWJseSBzbGVlcHMgNCBhZHVsdHMuIiwiaW1hZ2UiOiIvb3V0ZG9vci9pbWFnZXMvZGVmYXVsdEltYWdlLnBuZyIsInJlYWxJblN0b2NrIjo5OTUsInF1YW50aXR5Ijo5fX0=
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156325322
                      writeResponseTime: true
                      responseTime: 1747156325336
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 8
                      - Quantity 1
                      - 9
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 9
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7726047464400
                      responseTimeNanos: 7726063012200
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjEsIml0ZW1RdHkiOjV9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MTUsInVzZXJJZCI6MSwiaXRlbUlkIjoxLCJuYW1lIjoiQmx1ZSBTbGVlcGluZyBCYWciLCJkZXNjcmlwdGlvbiI6IlRoaXMgc2xlZXBpbmcgYmFnIGhhcyBhIHRlbXBlcmF0dXJlIHJhdGluZyBvZiAyNSBkZWdyZWVzLiBUaGUgd2F0ZXIgcmVwZWxsZW50IHNoZWxsIGtlZXBzIG91dCBtb2lzdHVyZS4iLCJpbWFnZSI6Ii9vdXRkb29yL2ltYWdlcy9kZWZhdWx0SW1hZ2UucG5nIiwicmVhbEluU3RvY2siOjk5NCwicXVhbnRpdHkiOjV9fQ==
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156325208
                      writeResponseTime: true
                      responseTime: 1747156325223
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 1
                      - Quantity 1
                      - 5
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 8
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725932379200
                      responseTimeNanos: 7725950695500
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjMsIml0ZW1RdHkiOjd9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MTMsInVzZXJJZCI6MSwiaXRlbUlkIjozLCJuYW1lIjoiUGluayBTbGVlcGluZyBCYWciLCJkZXNjcmlwdGlvbiI6IlRoaXMgc2xlZXBpbmcgYmFnIGhhcyBhIHRlbXBlcmF0dXJlIHJhdGluZyBvZiAyNSBkZWdyZWVzLiBUaGUgd2F0ZXIgcmVwZWxsZW50IHNoZWxsIGtlZXBzIG91dCBtb2lzdHVyZS4iLCJpbWFnZSI6Ii9vdXRkb29yL2ltYWdlcy9kZWZhdWx0SW1hZ2UucG5nIiwicmVhbEluU3RvY2siOjk5MCwicXVhbnRpdHkiOjd9fQ==
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156325093
                      writeResponseTime: true
                      responseTime: 1747156325111
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 3
                      - Quantity 1
                      - 7
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 7
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725787365300
                      responseTimeNanos: 7725801871200
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjcsIml0ZW1RdHkiOjEwfQ==
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 25\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MTEsInVzZXJJZCI6MSwiaXRlbUlkIjo3LCJuYW1lIjoiMyBQZXJzb24gVGVudCIsImRlc2NyaXB0aW9uIjoiQSBzbWFsbCBjb21wYWN0IHRlbnQgZ29vZCBmb3IgYmFja3BhY2tpbmcgdHJpcHMuIFRoaXMgdGVudCBjb21mb3J0YWJseSBzbGVlcHMgMyBhZHVsdHMuIiwiaW1hZ2UiOiIvb3V0ZG9vci9pbWFnZXMvZGVmYXVsdEltYWdlLnBuZyIsInJlYWxJblN0b2NrIjo5OTEsInF1YW50aXR5IjoxMH19
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156324947
                      writeResponseTime: true
                      responseTime: 1747156324962
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 7
                      - Quantity 1
                      - 10
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 6
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725692671700
                      responseTimeNanos: 7725707412600
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjQsIml0ZW1RdHkiOjJ9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6OSwidXNlcklkIjoxLCJpdGVtSWQiOjQsIm5hbWUiOiJMaWdodCBIaWtlIEJhY2twYWNrIiwiZGVzY3JpcHRpb24iOiJMaWdodHdlaWdodCBhbmQgc2ltcGxlIGRlc2lnbiB3aXRoIG1pbmltYWwgZmVhdHVyZXMgZm9yIHF1aWNrIG91dGRvb3IgZXhjdXJzaW9ucy4iLCJpbWFnZSI6Ii9vdXRkb29yL2ltYWdlcy9kZWZhdWx0SW1hZ2UucG5nIiwicmVhbEluU3RvY2siOjEwMDAsInF1YW50aXR5IjoyfX0=
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156324853
                      writeResponseTime: true
                      responseTime: 1747156324868
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 4
                      - Quantity 1
                      - 2
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 5
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725576629500
                      responseTimeNanos: 7725593814500
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjksIml0ZW1RdHkiOjN9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6NywidXNlcklkIjoxLCJpdGVtSWQiOjksIm5hbWUiOiI2IFBlcnNvbiBUZW50IiwiZGVzY3JpcHRpb24iOiJBIHRlbnQgZm9yIGxhcmdlciBncm91cHMgb3IgbG9uZyBjYW1waW5nIHN0YXlzLiBUaGlzIHRlbnQgY29tZm9ydGFibHkgc2xlZXBzIDYgYWR1bHRzLiIsImltYWdlIjoiL291dGRvb3IvaW1hZ2VzL2RlZmF1bHRJbWFnZS5wbmciLCJyZWFsSW5TdG9jayI6MTAwMCwicXVhbnRpdHkiOjN9fQ==
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156324737
                      writeResponseTime: true
                      responseTime: 1747156324754
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 9
                      - Quantity 1
                      - 3
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 4
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725478847600
                      responseTimeNanos: 7725493005400
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjYsIml0ZW1RdHkiOjF9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6NSwidXNlcklkIjoxLCJpdGVtSWQiOjYsIm5hbWUiOiJNdWx0aS1EYXkgQmFja3BhY2siLCJkZXNjcmlwdGlvbiI6IlN0b3JhZ2Ugc3BhY2UsIG9yZ2FuaXppbmcgcG9ja2V0cywgYW5kIGZlYXR1cmVzIHRvIGtlZXAgYWxsIGdlYXIgbmVlZGVkIGZvciBhIHNldmVyYWwtZGF5IGJhY2twYWNraW5nIHRyZWsuIiwiaW1hZ2UiOiIvb3V0ZG9vci9pbWFnZXMvZGVmYXVsdEltYWdlLnBuZyIsInJlYWxJblN0b2NrIjoxMDAwLCJxdWFudGl0eSI6MX19
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156324638
                      writeResponseTime: true
                      responseTime: 1747156324653
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 6
                      - Quantity 1
                      - 1
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 3
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725384718900
                      responseTimeNanos: 7725401217600
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjIsIml0ZW1RdHkiOjR9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MywidXNlcklkIjoxLCJpdGVtSWQiOjIsIm5hbWUiOiJHcmVlbiBTbGVlcGluZyBCYWciLCJkZXNjcmlwdGlvbiI6IlRoaXMgbGlnaHQgd2VpZ2h0IHNsZWVwaW5nIGJhZyBoYXMgYSB0ZW1wZXJhdHVyZSByYXRpbmcgb2YgMzUgZGVncmVlcy4gSXQgaXMgdmVyeSBjb21wYWN0IHdoZW4gcm9sbGVkIHVwLiBHb29kIGZvciBiYWNrcGFja2luZyB0cmlwcy4iLCJpbWFnZSI6Ii9vdXRkb29yL2ltYWdlcy9kZWZhdWx0SW1hZ2UucG5nIiwicmVhbEluU3RvY2siOjEwMDAsInF1YW50aXR5Ijo0fX0=
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156324545
                      writeResponseTime: true
                      responseTime: 1747156324561
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 2
                      - Quantity 1
                      - 4
                      row:
                        refs:
                        - first: false
                          dataSourceName: Generated Data Source
                          row: 2
                        first: false
                        last: false
                  - invocations:
                    - requestTimeNanos: 7725255977600
                      responseTimeNanos: 7725285814100
                      invKey:
                        description: http://localhost:4040/proxy/v1/cartItems
                        seqNum: 1
                      request: true
                      requestMessage:
                        contentEncoding: UTF-8
                        content: eyJpdGVtSWQiOjUsIml0ZW1RdHkiOjh9
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 1
                        httpHeader: "POST /proxy/v1/cartItems HTTP/1.1\r\nHost: localhost:4040\r\
                          \nContent-Type: application/json; charset=UTF-8\r\nContent-Length:\
                          \ 24\r\nAccept: application/json\r\nAuthorization: Basic\
                          \ [MASKED]"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      response: true
                      responseMessage:
                        contentEncoding: UTF-8
                        content: eyJzdGF0dXMiOjEsIm1lc3NhZ2UiOiJzdWNjZXNzIiwiZGF0YSI6eyJpZCI6MSwidXNlcklkIjoxLCJpdGVtSWQiOjUsIm5hbWUiOiJEYXkgSGlrZSBCYWNrcGFjayIsImRlc2NyaXB0aW9uIjoiUGxlbnR5IG9mIHN0b3JhZ2Ugc3BhY2UgdG8gb3JnYW5pemUgZ2VhciBmb3IgYW4gYWxsLWRheSBhZHZlbnR1cmUuIiwiaW1hZ2UiOiIvb3V0ZG9vci9pbWFnZXMvZGVmYXVsdEltYWdlLnBuZyIsInJlYWxJblN0b2NrIjoxMDAwLCJxdWFudGl0eSI6OH19
                        endpoint: http://localhost:4040/proxy/v1/cartItems
                        type: 2
                        httpHeader: "HTTP/1.1 200 \r\nDate: Tue, 13 May 2025 17:12:04\
                          \ GMT\r\nKeep-Alive: timeout=20\r\nX-Content-Type-Options:\
                          \ nosniff\r\nX-XSS-Protection: 1; mode=block\r\nCache-Control:\
                          \ no-cache, no-store, max-age=0, must-revalidate\r\nPragma:\
                          \ no-cache\r\nExpires: 0\r\nX-Frame-Options: DENY\r\nContent-Type:\
                          \ application/json\r\nTransfer-Encoding: chunked"
                        mimeType: true
                        mimeTypeObj:
                          extensions:
                          - json
                          isText: true
                          type: application/json
                      writeRequestTime: true
                      requestTime: 1747156324417
                      writeResponseTime: true
                      responseTime: 1747156324446
                    seqKey:
                      keys:
                      - ""
                      - ""
                      - Item ID 1
                      - 5
                      - Quantity 1
                      - 8
                      row:
                        refs:
                        - dataSourceName: Generated Data Source
                          row: 1
                        last: false
                  testName: /proxy/v1/cartItems - POST
                  writeTimestamp: true
                  timestamp: 1747156324451
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"itemId\":101,\"itemQty\":5}"
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
                            value: 7
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
                            value: 7
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
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"itemId\":102,\"itemQty\":10}"
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
                            selectedIdx: 16
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
                            value: RX123
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
                            value: EV456
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
                            value: 7890
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
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"region\":\"UNITED_STATES\",\"location\"\
                :\"New York\",\"receiverId\":\"RX123\",\"eventId\":\"EV456\",\"eventNumber\"\
                :\"7890\"}"
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
        name: /proxy/v1/orders - GET
        testID: 6
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /proxy/v1/orders - GET
          outputTools:
          - $type: GenericAssertionTool
            iconName: XMLAssertor
            name: JSON Assertor
            wrappedTool:
              $type: XMLAssertionTool
              iconName: XMLAssertor
              name: XML Assertor
              assertions:
              - $type: StringComparisonAssertion
                timestamp: 1725466619793
                name: String Comparison Assertion
                extractEntireElement: true
                Assertion_XPath: "/root/data/content/item[1]/receiverId/string()"
                value:
                  name: String Comparison Assertion
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "${receiverId}"
              message:
                $type: ExpectedXMLMessage
                message: true
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
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
              HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders?page=0&size=2147483647&sort=%5B%22orderNumber%2CDESC%22%5D"
          urlParameters:
            properties:
            - name: page
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: size
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 2147483647
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "[\"orderNumber,DESC\"]"
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
                showRequestHeaders: true
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                defaultValue: 0
                minOccurs: 0
                localName: page
                bodyType:
                  $type: BigIntegerType
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                defaultValue: 2147483647
                minOccurs: 0
                localName: size
                bodyType:
                  $type: BigIntegerType
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                defaultValue: "[\"orderNumber,DESC\"]"
                minOccurs: 0
                maxOccurs: -1
                localName: sort
                bodyType:
                  $type: StringType
              replacedColumn: ""
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
