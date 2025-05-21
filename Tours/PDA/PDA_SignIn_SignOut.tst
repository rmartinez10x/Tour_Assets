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
      - name: BASEURL
        value: http://localhost:8080
      name: recorded_environment
      active: true
  lastModifiedBy: rmartinez
  dataSources:
  - id: ds_1368816435_1744842146753_1499981040
    impl:
      $type: TableDataSource
      model:
        columnIdentifiers:
        - UserName
        - password
        rows:
        - - purchaser
          - password
        - - approver
          - password
    name: New Datasource
    useAllRows: true
  tests:
  - $type: RESTClientToolTest
    name: REST Client
    testID: 1
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: POST localhost/v1/login
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
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
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
      constrainToSchema: false
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
          HTTPClient_Endpoint: "${BASEURL}/v1/login"
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
              resetCookies:
                resetExistingCookiesProvider:
                  resetExistingCookies: true
                resetExistingCookies:
                  useDefault: false
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Origin
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: POST
              resetCookies:
                resetExistingCookiesProvider:
                  resetExistingCookies: true
                resetExistingCookies:
                  useDefault: false
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Origin
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: |
            ------WebKitFormBoundary04sKJQzlRlfAIIcU
            Content-Disposition: form-data; name="username"

            ${UserName}
            ------WebKitFormBoundary04sKJQzlRlfAIIcU
            Content-Disposition: form-data; name="password"

            password
            ------WebKitFormBoundary04sKJQzlRlfAIIcU--
          type: multipart/form-data
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: login
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 2
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/v1/build-info
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/v1/build-info"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: build-info
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 3
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/v1/MQConnectorUrl
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/v1/MQConnectorUrl"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: MQConnectorUrl
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 4
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/v1/demoAdmin/currentPreferences
      outputTools:
      - $type: GenericDataBank
        dataSourceNames:
        - New Datasource
        iconName: XMLDataBank
        name: Smart - JSON Data Bank
        wrappedTool:
          $type: XMLtoDataSource
          dataSourceNames:
          - New Datasource
          iconName: XMLDataBank
          name: XML Data Bank
          selectedXPaths:
          - elementOption: 1
            contentOption: 1
            XMLDataBank_ExtractXPath: "/root/data[1]/restEndPoints[1]/item[2]/routeId[1]/text()"
            mode: 1
          - elementOption: 1
            contentOption: 1
            XMLDataBank_ExtractXPath: "/root/data[1]/restEndPoints[1]/item[3]/routeId[1]/text()"
            mode: 1
          saveExpectedXML: true
          canonicalizeOutput: true
          xmlMessage: true
          xmlMessageObj:
            content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpbmR1c3RyeVR5cGU+T1VURE9PUjwvaW5kdXN0cnlUeXBlPjx3ZWJTZXJ2aWNlTW9kZT5SRVNUX0FQSTwvd2ViU2VydmljZU1vZGU+PGdyYXBoUUxFbmRwb2ludD5odHRwOi8vbG9jYWxob3N0OjgwODAvZ3JhcGhxbDwvZ3JhcGhRTEVuZHBvaW50PjxhZHZlcnRpc2luZ0VuYWJsZWQgdHlwZT0iYm9vbGVhbiI+dHJ1ZTwvYWR2ZXJ0aXNpbmdFbmFibGVkPjxkZW1vQnVncyB0eXBlPSJhcnJheSI+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48ZGVtb0J1Z3NUeXBlPklOQ09SUkVDVF9MT0NBVElPTl9GT1JfQVBQUk9WRURfT1JERVJTPC9kZW1vQnVnc1R5cGU+PC9pdGVtPjxpdGVtIHR5cGU9Im9iamVjdCI+PGRlbW9CdWdzVHlwZT5JTkNPUlJFQ1RfTlVNQkVSX09GX0lURU1TX0lOX1NVTU1BUllfT0ZfUEVORElOR19PUkRFUjwvZGVtb0J1Z3NUeXBlPjwvaXRlbT48L2RlbW9CdWdzPjxyZXN0RW5kUG9pbnRzIHR5cGU9ImFycmF5Ij48aXRlbSB0eXBlPSJvYmplY3QiPjxyb3V0ZUlkPml0ZW1zPC9yb3V0ZUlkPjxwYXRoPi9wcm94eS92MS9hc3NldHMvaXRlbXMvKio8L3BhdGg+PHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvYXNzZXRzL2l0ZW1zPC91cmw+PC9pdGVtPjxpdGVtIHR5cGU9Im9iamVjdCI+PHJvdXRlSWQ+b3JkZXJzPC9yb3V0ZUlkPjxwYXRoPi9wcm94eS92MS9vcmRlcnMvKio8L3BhdGg+PHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvb3JkZXJzPC91cmw+PC9pdGVtPjxpdGVtIHR5cGU9Im9iamVjdCI+PHJvdXRlSWQ+Y2F0ZWdvcmllczwvcm91dGVJZD48cGF0aD4vcHJveHkvdjEvYXNzZXRzL2NhdGVnb3JpZXMvKio8L3BhdGg+PHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvYXNzZXRzL2NhdGVnb3JpZXM8L3VybD48L2l0ZW0+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48cm91dGVJZD5sb2NhdGlvbnM8L3JvdXRlSWQ+PHBhdGg+L3Byb3h5L3YxL2xvY2F0aW9ucy8qKjwvcGF0aD48dXJsPmh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC92MS9sb2NhdGlvbnM8L3VybD48L2l0ZW0+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48cm91dGVJZD5jYXJ0PC9yb3V0ZUlkPjxwYXRoPi9wcm94eS92MS9jYXJ0SXRlbXMvKio8L3BhdGg+PHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvY2FydEl0ZW1zPC91cmw+PC9pdGVtPjwvcmVzdEVuZFBvaW50cz48dXNlUGFyYXNvZnRKREJDUHJveHkgdHlwZT0iYm9vbGVhbiI+ZmFsc2U8L3VzZVBhcmFzb2Z0SkRCQ1Byb3h5PjxwYXJhc29mdFZpcnR1YWxpemVTZXJ2ZXJVcmw+aHR0cDovL2xvY2FsaG9zdDo5MDgwPC9wYXJhc29mdFZpcnR1YWxpemVTZXJ2ZXJVcmw+PHBhcmFzb2Z0VmlydHVhbGl6ZVNlcnZlclBhdGg+L3ZpcnR1YWxEYjwvcGFyYXNvZnRWaXJ0dWFsaXplU2VydmVyUGF0aD48cGFyYXNvZnRWaXJ0dWFsaXplR3JvdXBJZD5kZW1vLWFwcDwvcGFyYXNvZnRWaXJ0dWFsaXplR3JvdXBJZD48bXFUeXBlPkFDVElWRV9NUTwvbXFUeXBlPjxhY3RpdmVNcUNvbmZpZyB0eXBlPSJvYmplY3QiPjxvcmRlclNlcnZpY2VTZW5kVG8+aW52ZW50b3J5LnJlcXVlc3Q8L29yZGVyU2VydmljZVNlbmRUbz48b3JkZXJTZXJ2aWNlTGlzdGVuT24+aW52ZW50b3J5LnJlc3BvbnNlPC9vcmRlclNlcnZpY2VMaXN0ZW5Pbj48L2FjdGl2ZU1xQ29uZmlnPjxrYWZrYUNvbmZpZyB0eXBlPSJvYmplY3QiPjxvcmRlclNlcnZpY2VTZW5kVG8+aW52ZW50b3J5LnJlcXVlc3Q8L29yZGVyU2VydmljZVNlbmRUbz48b3JkZXJTZXJ2aWNlTGlzdGVuT24+aW52ZW50b3J5LnJlc3BvbnNlPC9vcmRlclNlcnZpY2VMaXN0ZW5Pbj48L2thZmthQ29uZmlnPjxyYWJiaXRNcUNvbmZpZyB0eXBlPSJvYmplY3QiPjxvcmRlclNlcnZpY2VTZW5kVG8+aW52ZW50b3J5LnJlcXVlc3Q8L29yZGVyU2VydmljZVNlbmRUbz48b3JkZXJTZXJ2aWNlTGlzdGVuT24+aW52ZW50b3J5LnJlc3BvbnNlPC9vcmRlclNlcnZpY2VMaXN0ZW5Pbj48L3JhYmJpdE1xQ29uZmlnPjwvZGF0YT48L3Jvb3Q+
            editable: true
            headersAvailable: false
            mimeType: true
            mimeTypeObj:
              extensions:
              - xml
              isXML: true
              isText: true
              type: text/xml
          virtualDSCreator:
            writableColumns:
            - customName: "Test 4: routeId"
            - customName: "Test 4: restEndPoints_3_routeId"
        conversionStrategy:
          dataFormatName: JSON
          conversionStrategyId: JSON
          conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/currentPreferences"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: demoAdmin
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: currentPreferences
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 5
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/localize
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/localize?lang=EN"
      urlParameters:
        properties:
        - name: lang
          value:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: EN
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: localize
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    enabled: false
    testID: 6
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
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
            value: cartItems
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 7
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/proxy/v1/orders/unreviewedNumber
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/${Test 4: routeId}/unreviewedNumber"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
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
            value: "${Test 4: routeId}"
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: unreviewedNumber
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 8
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/proxy/v1/assets/categories
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/${Test 4: restEndPoints_3_routeId}"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
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
            value: assets
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: "${Test 4: restEndPoints_3_routeId}"
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 9
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/v1/build-info 2
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/v1/build-info"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: build-info
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 10
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/v1/demoAdmin/currentPreferences 2
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/currentPreferences"
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: demoAdmin
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: currentPreferences
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testFlowLogic:
      beforeDelay:
        delay: 4000
        scenarioDelayOnly: false
    testID: 11
    tool:
      $type: RESTClient
      dataSourceNames:
      - New Datasource
      iconName: RESTClient
      name: GET localhost/localize 2
      formJson:
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
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      xmlBuilder: false
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
          HTTPClient_Endpoint: "${BASEURL}/localize?lang=EN"
      urlParameters:
        properties:
        - name: lang
          value:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: EN
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
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
            keepAlive1_1:
              bool: true
          - $type: HTTPClientHTTPProperties
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: User-Agent
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                        \ (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36"
                - name: Accept
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "application/json, text/plain, */*"
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
                - name: Sec-Fetch-Site
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: same-origin
                - name: Sec-Fetch-Mode
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: cors
                - name: Sec-Fetch-Dest
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: empty
                - name: Referer
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: http://localhost:8080/loginPage
                - name: Accept-Encoding
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "gzip, deflate, br, zstd"
                - name: Accept-Language
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "en-US,en;q=0.9"
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
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: text/plain
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: localize
      resourceMethod:
        httpMethod: GET
      payloadFormat: Other
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
