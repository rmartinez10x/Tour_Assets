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
  tests:
  - $type: RESTClientToolTest
    name: REST Client
    enabled: false
    testID: 35
    tool:
      $type: RESTClient
      dataSourceNames:
      - Categories
      iconName: RESTClient
      name: REST Client
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
      router:
        values:
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
          HTTPClient_Endpoint: http://localhost:8080/v1/demoAdmin/databaseReset
      transportProperties:
        manager:
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
                  method: PUT
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
      formXML:
        doctype: ""
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: application/json
        dataSource:
          columnName: Category
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
            value: databaseReset
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 1
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: POST localhost/v1/login
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
          MessagingClient_LiteralMessage: "------WebKitFormBoundaryBrh87pKMJ3ohkfTN\r\
            \nContent-Disposition: form-data; name=\"username\"\r\n\r\npurchaser\r\
            \n------WebKitFormBoundaryBrh87pKMJ3ohkfTN\r\nContent-Disposition: form-data;\
            \ name=\"password\"\r\n\r\npassword\r\n------WebKitFormBoundaryBrh87pKMJ3ohkfTN--\r\
            \n"
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
      iconName: RESTClient
      name: GET localhost/v1/demoAdmin/currentPreferences
      outputTools:
      - $type: GenericDataBank
        iconName: XMLDataBank
        name: Smart - JSON Data Bank
        wrappedTool:
          $type: XMLtoDataSource
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
          - elementOption: 1
            contentOption: 1
            XMLDataBank_ExtractXPath: "/root/data[1]/restEndPoints[1]/item[4]/routeId[1]/text()"
            mode: 1
          - elementOption: 1
            contentOption: 1
            XMLDataBank_ExtractXPath: "/root/data[1]/restEndPoints[1]/item[1]/routeId[1]/text()"
            mode: 1
          saveExpectedXML: true
          canonicalizeOutput: true
          xmlMessage: true
          xmlMessageObj:
            content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHJvb3QgdHlwZT0ib2JqZWN0Ij4KIDxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+CiA8bWVzc2FnZT5zdWNjZXNzPC9tZXNzYWdlPgogPGRhdGEgdHlwZT0ib2JqZWN0Ij4KICA8aW5kdXN0cnlUeXBlPk9VVERPT1I8L2luZHVzdHJ5VHlwZT4KICA8d2ViU2VydmljZU1vZGU+UkVTVF9BUEk8L3dlYlNlcnZpY2VNb2RlPgogIDxncmFwaFFMRW5kcG9pbnQ+aHR0cDovL2xvY2FsaG9zdDo4MDgwL2dyYXBocWw8L2dyYXBoUUxFbmRwb2ludD4KICA8YWR2ZXJ0aXNpbmdFbmFibGVkIHR5cGU9ImJvb2xlYW4iPnRydWU8L2FkdmVydGlzaW5nRW5hYmxlZD4KICA8ZGVtb0J1Z3MgdHlwZT0iYXJyYXkiPgogICA8aXRlbSB0eXBlPSJvYmplY3QiPgogICAgPGRlbW9CdWdzVHlwZT5JTkNPUlJFQ1RfTE9DQVRJT05fRk9SX0FQUFJPVkVEX09SREVSUzwvZGVtb0J1Z3NUeXBlPgogICA8L2l0ZW0+CiAgIDxpdGVtIHR5cGU9Im9iamVjdCI+CiAgICA8ZGVtb0J1Z3NUeXBlPklOQ09SUkVDVF9OVU1CRVJfT0ZfSVRFTVNfSU5fU1VNTUFSWV9PRl9QRU5ESU5HX09SREVSPC9kZW1vQnVnc1R5cGU+CiAgIDwvaXRlbT4KICA8L2RlbW9CdWdzPgogIDxyZXN0RW5kUG9pbnRzIHR5cGU9ImFycmF5Ij4KICAgPGl0ZW0gdHlwZT0ib2JqZWN0Ij4KICAgIDxyb3V0ZUlkPml0ZW1zPC9yb3V0ZUlkPgogICAgPHBhdGg+L3Byb3h5L3YxL2Fzc2V0cy9pdGVtcy8qKjwvcGF0aD4KICAgIDx1cmw+aHR0cDovL2xvY2FsaG9zdDo4MDgwL3YxL2Fzc2V0cy9pdGVtczwvdXJsPgogICA8L2l0ZW0+CiAgIDxpdGVtIHR5cGU9Im9iamVjdCI+CiAgICA8cm91dGVJZD5vcmRlcnM8L3JvdXRlSWQ+CiAgICA8cGF0aD4vcHJveHkvdjEvb3JkZXJzLyoqPC9wYXRoPgogICAgPHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvb3JkZXJzPC91cmw+CiAgIDwvaXRlbT4KICAgPGl0ZW0gdHlwZT0ib2JqZWN0Ij4KICAgIDxyb3V0ZUlkPmNhdGVnb3JpZXM8L3JvdXRlSWQ+CiAgICA8cGF0aD4vcHJveHkvdjEvYXNzZXRzL2NhdGVnb3JpZXMvKio8L3BhdGg+CiAgICA8dXJsPmh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC92MS9hc3NldHMvY2F0ZWdvcmllczwvdXJsPgogICA8L2l0ZW0+CiAgIDxpdGVtIHR5cGU9Im9iamVjdCI+CiAgICA8cm91dGVJZD5sb2NhdGlvbnM8L3JvdXRlSWQ+CiAgICA8cGF0aD4vcHJveHkvdjEvbG9jYXRpb25zLyoqPC9wYXRoPgogICAgPHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvbG9jYXRpb25zPC91cmw+CiAgIDwvaXRlbT4KICAgPGl0ZW0gdHlwZT0ib2JqZWN0Ij4KICAgIDxyb3V0ZUlkPmNhcnQ8L3JvdXRlSWQ+CiAgICA8cGF0aD4vcHJveHkvdjEvY2FydEl0ZW1zLyoqPC9wYXRoPgogICAgPHVybD5odHRwOi8vbG9jYWxob3N0OjgwODAvdjEvY2FydEl0ZW1zPC91cmw+CiAgIDwvaXRlbT4KICA8L3Jlc3RFbmRQb2ludHM+CiAgPHVzZVBhcmFzb2Z0SkRCQ1Byb3h5IHR5cGU9ImJvb2xlYW4iPmZhbHNlPC91c2VQYXJhc29mdEpEQkNQcm94eT4KICA8cGFyYXNvZnRWaXJ0dWFsaXplU2VydmVyVXJsPmh0dHA6Ly9sb2NhbGhvc3Q6OTA4MDwvcGFyYXNvZnRWaXJ0dWFsaXplU2VydmVyVXJsPgogIDxwYXJhc29mdFZpcnR1YWxpemVTZXJ2ZXJQYXRoPi92aXJ0dWFsRGI8L3BhcmFzb2Z0VmlydHVhbGl6ZVNlcnZlclBhdGg+CiAgPHBhcmFzb2Z0VmlydHVhbGl6ZUdyb3VwSWQ+ZGVtby1hcHA8L3BhcmFzb2Z0VmlydHVhbGl6ZUdyb3VwSWQ+CiAgPG1xVHlwZT5BQ1RJVkVfTVE8L21xVHlwZT4KICA8YWN0aXZlTXFDb25maWcgdHlwZT0ib2JqZWN0Ij4KICAgPG9yZGVyU2VydmljZVNlbmRUbz5pbnZlbnRvcnkucmVxdWVzdDwvb3JkZXJTZXJ2aWNlU2VuZFRvPgogICA8b3JkZXJTZXJ2aWNlTGlzdGVuT24+aW52ZW50b3J5LnJlc3BvbnNlPC9vcmRlclNlcnZpY2VMaXN0ZW5Pbj4KICA8L2FjdGl2ZU1xQ29uZmlnPgogIDxrYWZrYUNvbmZpZyB0eXBlPSJvYmplY3QiPgogICA8b3JkZXJTZXJ2aWNlU2VuZFRvPmludmVudG9yeS5yZXF1ZXN0PC9vcmRlclNlcnZpY2VTZW5kVG8+CiAgIDxvcmRlclNlcnZpY2VMaXN0ZW5Pbj5pbnZlbnRvcnkucmVzcG9uc2U8L29yZGVyU2VydmljZUxpc3Rlbk9uPgogIDwva2Fma2FDb25maWc+CiAgPHJhYmJpdE1xQ29uZmlnIHR5cGU9Im9iamVjdCI+CiAgIDxvcmRlclNlcnZpY2VTZW5kVG8+aW52ZW50b3J5LnJlcXVlc3Q8L29yZGVyU2VydmljZVNlbmRUbz4KICAgPG9yZGVyU2VydmljZUxpc3Rlbk9uPmludmVudG9yeS5yZXNwb25zZTwvb3JkZXJTZXJ2aWNlTGlzdGVuT24+CiAgPC9yYWJiaXRNcUNvbmZpZz4KIDwvZGF0YT4KPC9yb290Pg==
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
            - customName: "Test 4: restEndPoints_4_routeId"
            - customName: "Test 4: restEndPoints_routeId"
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
    testID: 6
    tool:
      $type: RESTClient
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
    testID: 7
    tool:
      $type: RESTClient
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
    testID: 8
    tool:
      $type: RESTClient
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
    testID: 9
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/v1/MQConnectorUrl 2
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 10
    tool:
      $type: RESTClient
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 11
    tool:
      $type: RESTClient
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 12
    tool:
      $type: RESTClient
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 13
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/locations/regions
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/${Test 4: restEndPoints_4_routeId}/regions"
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
            value: "${Test 4: restEndPoints_4_routeId}"
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: regions
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
    testID: 14
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/assets/categories/1
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/${Test 4: restEndPoints_3_routeId}/1"
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: 1
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
    testID: 15
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems 2
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 16
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/orders/unreviewedNumber 2
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 17
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/assets/items
      outputTools:
      - $type: GenericDataBank
        iconName: XMLDataBank
        name: Smart - JSON Data Bank
        wrappedTool:
          $type: XMLtoDataSource
          iconName: XMLDataBank
          name: XML Data Bank
          selectedXPaths:
          - elementOption: 1
            contentOption: 1
            XMLDataBank_ExtractXPath: "/root/data[1]/content[1]/item[1]/region[1]/text()"
            mode: 1
          saveExpectedXML: true
          canonicalizeOutput: true
          xmlMessage: true
          xmlMessageObj:
            content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHJvb3QgdHlwZT0ib2JqZWN0Ij4KIDxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+CiA8bWVzc2FnZT5zdWNjZXNzPC9tZXNzYWdlPgogPGRhdGEgdHlwZT0ib2JqZWN0Ij4KICA8dG90YWxFbGVtZW50cyB0eXBlPSJudW1iZXIiPjM8L3RvdGFsRWxlbWVudHM+CiAgPHRvdGFsUGFnZXMgdHlwZT0ibnVtYmVyIj4xPC90b3RhbFBhZ2VzPgogIDxzaXplIHR5cGU9Im51bWJlciI+MjAwMDwvc2l6ZT4KICA8bnVtYmVyIHR5cGU9Im51bWJlciI+MDwvbnVtYmVyPgogIDxudW1iZXJPZkVsZW1lbnRzIHR5cGU9Im51bWJlciI+MzwvbnVtYmVyT2ZFbGVtZW50cz4KICA8c29ydD5uYW1lOiBBU0M8L3NvcnQ+CiAgPGNvbnRlbnQgdHlwZT0iYXJyYXkiPgogICA8aXRlbSB0eXBlPSJvYmplY3QiPgogICAgPGlkIHR5cGU9Im51bWJlciI+MTwvaWQ+CiAgICA8bmFtZT5CbHVlIFNsZWVwaW5nIEJhZzwvbmFtZT4KICAgIDxkZXNjcmlwdGlvbj5UaGlzIHNsZWVwaW5nIGJhZyBoYXMgYSB0ZW1wZXJhdHVyZSByYXRpbmcgb2YgMjUgZGVncmVlcy4gVGhlIHdhdGVyIHJlcGVsbGVudCBzaGVsbCBrZWVwcyBvdXQgbW9pc3R1cmUuPC9kZXNjcmlwdGlvbj4KICAgIDxpblN0b2NrIHR5cGU9Im51bWJlciI+MTA8L2luU3RvY2s+CiAgICA8aW1hZ2U+L291dGRvb3IvaW1hZ2VzL3NsZWVwaW5nYmFnLWJsdWUtZGV0YWlsLnBuZzwvaW1hZ2U+CiAgICA8cmVnaW9uPkxPQ0FUSU9OXzE8L3JlZ2lvbj4KICAgIDxsYXN0QWNjZXNzZWREYXRlPjIwMjAtMDctMjdUMjI6MzI6MjMuNDkxKzAwOjAwPC9sYXN0QWNjZXNzZWREYXRlPgogICAgPGNhdGVnb3J5SWQgdHlwZT0ibnVtYmVyIj4xPC9jYXRlZ29yeUlkPgogICA8L2l0ZW0+CiAgIDxpdGVtIHR5cGU9Im9iamVjdCI+CiAgICA8aWQgdHlwZT0ibnVtYmVyIj4yPC9pZD4KICAgIDxuYW1lPkdyZWVuIFNsZWVwaW5nIEJhZzwvbmFtZT4KICAgIDxkZXNjcmlwdGlvbj5UaGlzIGxpZ2h0IHdlaWdodCBzbGVlcGluZyBiYWcgaGFzIGEgdGVtcGVyYXR1cmUgcmF0aW5nIG9mIDM1IGRlZ3JlZXMuIEl0IGlzIHZlcnkgY29tcGFjdCB3aGVuIHJvbGxlZCB1cC4gR29vZCBmb3IgYmFja3BhY2tpbmcgdHJpcHMuPC9kZXNjcmlwdGlvbj4KICAgIDxpblN0b2NrIHR5cGU9Im51bWJlciI+MTU8L2luU3RvY2s+CiAgICA8aW1hZ2U+L291dGRvb3IvaW1hZ2VzL3NsZWVwaW5nYmFnLWdyZWVuLWRldGFpbC5wbmc8L2ltYWdlPgogICAgPHJlZ2lvbj5MT0NBVElPTl8yPC9yZWdpb24+CiAgICA8bGFzdEFjY2Vzc2VkRGF0ZT4yMDIwLTA3LTI3VDE4OjMzOjIzLjAwMCswMDowMDwvbGFzdEFjY2Vzc2VkRGF0ZT4KICAgIDxjYXRlZ29yeUlkIHR5cGU9Im51bWJlciI+MTwvY2F0ZWdvcnlJZD4KICAgPC9pdGVtPgogICA8aXRlbSB0eXBlPSJvYmplY3QiPgogICAgPGlkIHR5cGU9Im51bWJlciI+MzwvaWQ+CiAgICA8bmFtZT5QaW5rIFNsZWVwaW5nIEJhZzwvbmFtZT4KICAgIDxkZXNjcmlwdGlvbj5UaGlzIHNsZWVwaW5nIGJhZyBoYXMgYSB0ZW1wZXJhdHVyZSByYXRpbmcgb2YgMjUgZGVncmVlcy4gVGhlIHdhdGVyIHJlcGVsbGVudCBzaGVsbCBrZWVwcyBvdXQgbW9pc3R1cmUuPC9kZXNjcmlwdGlvbj4KICAgIDxpblN0b2NrIHR5cGU9Im51bWJlciI+ODwvaW5TdG9jaz4KICAgIDxpbWFnZT4vb3V0ZG9vci9pbWFnZXMvc2xlZXBpbmdiYWctcGluay1kZXRhaWwucG5nPC9pbWFnZT4KICAgIDxyZWdpb24+TE9DQVRJT05fMTwvcmVnaW9uPgogICAgPGxhc3RBY2Nlc3NlZERhdGU+MjAyMC0wNy0yN1QxODozMzoyMy4wMDArMDA6MDA8L2xhc3RBY2Nlc3NlZERhdGU+CiAgICA8Y2F0ZWdvcnlJZCB0eXBlPSJudW1iZXIiPjE8L2NhdGVnb3J5SWQ+CiAgIDwvaXRlbT4KICA8L2NvbnRlbnQ+CiA8L2RhdGE+Cjwvcm9vdD4=
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
            - customName: "Test 17: region"
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/${Test 4: restEndPoints_routeId}?categoryId=1"
      urlParameters:
        properties:
        - name: categoryId
          value:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: 1
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
            value: "${Test 4: restEndPoints_routeId}"
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
    testID: 18
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems/1
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems/1"
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: 1
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
    testID: 19
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: POST localhost/proxy/v1/cartItems
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
                  _id: 1
                required: true
              name: anonymous
              compositor: true
              compositorObj:
                $type: AllCompositor
                types:
                - $type: ElementType
                  defaultValue: 0
                  minOccurs: 0
                  nillable: true
                  localName: itemId
                  bodyType:
                    $type: ComplexType
                    _id: 2
                    attributes:
                    - ns: ""
                      name: type
                      fixed: number
                      contentType:
                        $type: StringType
                        _ref: 1
                      required: true
                    isAbstract: true
                    content: true
                    contentObj:
                      $type: StringType
                      _ref: 1
                    namespace: urn:parasoft:json
                    name: Number
                - $type: ElementType
                  defaultValue: 0
                  minOccurs: 0
                  nillable: true
                  localName: itemQty
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
                        $type: StringValue
                        replacedColumn: ""
                        value: 1
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
                          value: number
                        useValue: true
                      contentValue: true
                      contentValueObj:
                        $type: StringValue
                        replacedColumn: ""
                        value: 1
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
                  method: POST
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
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
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
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
                      value: http://localhost:8080/categories/1
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
              httpHeaders:
                properties:
                - name: sec-ch-ua-platform
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: '"Windows"'
                - name: sec-ch-ua
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: "\"Not A(Brand\";v=\"8\", \"Chromium\";v=\"132\", \"\
                        Google Chrome\";v=\"132\""
                - name: sec-ch-ua-mobile
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: ?0
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
                - name: DNT
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 1
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
                      value: http://localhost:8080/categories/1
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
          MessagingClient_LiteralMessage: "{\"itemId\":1,\"itemQty\":1}"
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
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  - $type: RESTClientToolTest
    name: REST Client
    testID: 20
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems 3
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 21
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems 4
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 22
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems 5
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
                      value: http://localhost:8080/categories/1
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
                      value: http://localhost:8080/categories/1
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
    testID: 23
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/v1/MQConnectorUrl 3
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
    testID: 24
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/v1/build-info 3
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
    testID: 25
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/v1/demoAdmin/currentPreferences 3
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
    testID: 26
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/localize 3
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
    testID: 27
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/cartItems 6
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
    testID: 28
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/locations/regions 2
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/${Test 4: restEndPoints_4_routeId}/regions"
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
            value: "${Test 4: restEndPoints_4_routeId}"
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: regions
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
    testID: 29
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/orders/unreviewedNumber 3
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
    testID: 30
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: GET localhost/proxy/v1/locations/location
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
          HTTPClient_Endpoint: "${BASEURL}/proxy/v1/${Test 4: restEndPoints_4_routeId}/location?region=${Test\
            \ 17: region}"
      urlParameters:
        properties:
        - name: region
          value:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: "${Test 17: region}"
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
                      value: http://localhost:8080/orderWizard
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
                      value: http://localhost:8080/orderWizard
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
            value: "${Test 4: restEndPoints_4_routeId}"
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: location
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
    name: REST Client 2
    testID: 33
    tool:
      $type: RESTClient
      dataSourceNames:
      - Categories
      iconName: RESTClient
      name: REST Client 2
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
      router:
        values:
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
          HTTPClient_Endpoint: http://localhost:8080/v1/demoAdmin/databaseReset
      transportProperties:
        manager:
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
                  method: PUT
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
      formXML:
        doctype: ""
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: application/json
        dataSource:
          columnName: Category
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
            value: databaseReset
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
