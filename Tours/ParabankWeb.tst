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
      - name: PATH_BASE_URL
        value: http://localhost:8080/
      - name: username
        value: ""
      - name: password
        value: ""
      name: Default path Environment
    - variables:
      - name: PATH_BASE_URL
        value: http://path:18081/
      - name: username
        value: ""
      - name: password
        value: ""
      name: Default path Environment 2
      active: true
  lastModifiedBy: rmartinez
  browserOptions:
    browserType:
      useDefault: false
      type:
        $type: SingleBrowserType
        typeValue: 3
  tests:
  - $type: TestSuite
    name: Web Scenarios
    testID: 1
    browserOptions:
      browserType:
        useDefault: false
        type:
          $type: SingleBrowserType
          typeValue: 3
    tests:
    - $type: TestSuite
      name: Demo
      testID: 2
      abortOnError: 1
      browserOptions:
        browserType:
          useDefault: false
          type:
            $type: SingleBrowserType
            typeValue: 3
      runMode: 2
      tests:
      - $type: BrowserTest
        name: Navigate to "http://path:18081/parabank/index.htm"
        testID: 3
        tool:
          $type: BrowserTestingTool
          usesAutomaticallyGeneratedName: true
          iconName: BrowserTest
          name: Navigate to "http://path:18081/parabank/index.htm"
          commands:
          - windowIdentifier:
              BrowserTestingTool_WindowName: ""
            action:
              $type: NavigateAction
              url:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  BrowserTestingTool_NavigateURL: "${PATH_BASE_URL}/parabank/index.htm"
          delaySettings:
            delays:
            - $type: PageLoadDelay
            - $type: ElementDelay
              windowIdentifier:
                WindowName: ""
              elementState: 1
              specifiedLocator:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: ""
          originalCommand: true
          command:
            windowIdentifier:
              BrowserTestingTool_WindowName: ""
            action:
              $type: NavigateAction
              url:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  BrowserTestingTool_NavigateURL: "${PATH_BASE_URL}/parabank/index.htm"
          browserContents: true
          contents:
            windowContents:
            - parentUrl: ""
              charSet: windows-1252
              url: http://path:18081//parabank/index.htm
              htmlSize: 1583
              html: !!binary |-
                H4sIAAAAAAAA/71Ye2/bNhD/O/kULAcULVBbifNoG8vqUjdBCzSN0aQrhm0oKIm2GEukRlJxjLYf
                aN9yR+qZ2E4m12sC2xIfd7y7373oPnpzPrz8fXSCIp3E3rZrf9yIktBzlZ7HFOl5SgdY0xvtBEph
                79cgIlJRjfCny9POC9z/g0/+PApiQaZ/PYPnTvkYEk06jfebxku3fHzWrYftaMRCesSFflK+dAhn
                CdH06deQqTQmc5jlFD1iSSqkJlz3v5sDjIVMqhV+LIJp/7shUezuqIglX6+ZYj6LmZ4fAemQ8nJN
                EAn5NRWKaSb4EfGViDNN+99dxyrB297achOqCSqEHxTC1xOR1mmH/p2x6wEeCq4p151LUB1GQf5W
                6NAouF+RaVDRTAOjEZHkNeFT9A19pnEgEgpP5zxmILIZZ3ziOvlSswnGpyiSdDzATgpbfVjiaJqA
                FjTtgr36V4oqBUKxcHCye7jzYu+w19sbHpw+3zne2X/9cu/58OR0uPvi5PCkh5Gk8QBbiVVEqcYL
                xl/J0276nxiqQLJUIyWDJscZ9a9AiQ7hkywm8ko5u93D7svyvZsw3r1qdxwPzG15AVvXsU6wDU++
                COdIcIBoOMChCLIEzNmNxQQ4ZIpKThLaHcO4evK0nx85ZNcIOOKEMD4inMZ2eMt88q+tbfirlmmR
                lqsQcsmCdklopAHotBSHJZO7agNvmFDlBDEFHU3YuJ29ZizU0QAfHGIUUTaJANX7MOwLGVI5wDuA
                9pgoNcD2xEahZIVIjIf0ZqMigUFEe4lIDDKUXlcJuLvXkHBvd5mEhh3g1bhig0AlcVquC0hqggr2
                Tm5SKhnlAcTUiKKQjcdUmlfXSSHyOgAGr4aEQR+VOSqQ9ZAB9kkwnUiR8fAIZTJ+sqCCfFPHoK57
                lU7aaOIp2oF/LjqSppTovoWiwWgWVxLTsQboZzlKY1aOX5hgCVzAXatH14lZscyrrE98ken2Nj82
                29AnZVS7lC744DULqGpP+qLYuZK0CetHjjObzbpG2UqMdReisnOlUieVIswCrSDMpNgbFW9rknJM
                miAVtfciIIUiV5BbMyYcm21oBHBpUgb4ZfGixf1MawPd2/aOICthb3M+bejdEbMKI8b0mcI/jCG7
                bQWTQvMNJsVIezbFxppRrtfCubeaKcB8Km83KaaRJ+oJ43PNiSJ7lD8mjbhRzxtmSoMWJXpvshLk
                rl4jlNhM1cgvplRCJmkVUxAEA4O1pinz7NZWfgSlUCSA5ej84tIyA0SZLzf1XN/7VCRL1/E9G/Ts
                lDlmHVNt1mA8BY+va4Eq6NoJXBy+zL0YXZM4gwETfa2ia5Yj2DaD2N2KZVpsWs62nl3K9gHaKvMT
                VgtUeFhJCsyH3vEGQdcx1sozSo3PWIhplraH56mQE6GRPRdifCxe5UhN7zKQdMKUprI9i4/Fzopw
                A/t30JsjvZ6uACtN3r2NeoC5Sgkv1VZGfOw95r5K+1C4wazXjF31km0LwqbD5ykZ2giIh5dnqM4C
                9yQXp8zxbfTxaqZCEOIz01EoyQydQu5+OI/9CKtLSbiCwuInsBpGNJhCVxJD/3RPCt0EqzMypegN
                tR2aWoiui0bXM7Ha7nay6Kn+m+n9tqf+MiNh/Jgkaf+LdfubBIR4zeIYMu/8YU1tht9xEECtqNFb
                cEghfxrbVQgsjFUVxomQzTJi/SLuI1S96Ayo1TEn2vfeQwesNPpAZ3AGeG/ChF5DB6fu1jUlPOA8
                cLCdl07vwOnt9PaqIsnG96bmOBBve95fDnHd5b9T6IOYoY+0c55STsNbNdlm2B1gD3TwqLpEWALC
                DXHav82phF+JB7Wk4FyJhnUOsAwJt1NM9VQ9NLvwsRCQuJote5HO68l6AqbyinlBdz9cD78t6uFv
                qNTWAo8NdFL3UN9MP3UPg/W6qrUJ3tdbPUwUCrAsUbfp2lIqSx4g0LgeY5omZI2K7QI2ojOSPsBp
                7YZlmG+8012burNEd+MmQ6RzW5ph7x80KtWBjiGg2GGFJDXQoWG3LrXroGsuXzVuHv83M4IyhYg+
                am1ajDSRE3MV+8WP7dXL3SXLJSovWooIAP7vmO4LVtq7738BjWTeyxIXAAA=
              isTopLevelWindow: true
            browserType:
              $type: SingleBrowserType
              typeValue: 3
          browserOutputProvider:
            msgOutputProviders:
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}index.htm"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
              baseUrl: "${PATH_BASE_URL}index.htm"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}index.htm"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}index.htm"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}index.htm"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}index.htm"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}index.htm"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}index.htm"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}index.htm"
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://path:18081//parabank/index.htm
              baseUrl: "${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/template.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://path:18081//parabank/index.htm
              baseUrl: "${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/style.css;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://path:18081//parabank/index.htm
              baseUrl: "${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
            - $type: HttpMessageOutputProvider
              name: "${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              baseUrl: "${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw"
              hasUrlArgs: true
              urlArgs:
                properties:
                - name: alt
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: proto
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${username}https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM2LjAuNzEwMy4xMTQSIAnYBtxHa1NCvRIFDeeNQA4SBQ3OQUx6IczUx26Tdqkw?alt=proto"
            contents:
              $type: BrowserContentsOutputProvider
              outputTools:
              - $type: BrowserContentsViewer
                iconName: BrowserContentsViewer
                name: Browser Contents Viewer
              - $type: AccessibilityScanTool
                allowToolbar: false
                iconName: AccessibilityScanTool
                name: Web Accessibility Scan
                outputProvider:
                  name: Errors
                locator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: id
              name: Browser Contents
            traffic:
              $type: NamedToolOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: HTTP Traffic
      - $type: TestSuite
        name: "Form: login"
        testID: 4
        abortOnError: 1
        runMode: 2
        tests:
        - $type: BrowserTest
          name: Type "john"
          testID: 5
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Type "parasoft"
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypeAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: username
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    BrowserTestingTool_TypeValue: john
            delaySettings:
              delays:
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypeAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: username
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    BrowserTestingTool_TypeValue: john
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: windows-1252
                url: http://path:18081//parabank/index.htm
                htmlSize: 1581
                html: !!binary |-
                  H4sIAAAAAAAA/71Ye2/bNhD/O/kULAcMLVBbea+xZXV5ogWaxmjSFcM2FJREW7QlUiOpOEHbD7Rv
                  uSP1jB0nk+s1iR3xdce7+91L7rPTy5Pr34dnKNJJ7G269p8bURJ6rtJ3MUX6LqUDrOmtdgKlsPdr
                  EBGpqEb44/V55xXu/8HHf/aCWJDpXy/huVM+hkSTTmN82xh0y8eX3XrazkYspD0u9PNy0CGcJUTT
                  F19CptKY3MEqp+gZS1IhNeG6/81cYCRkUu3wYxFM+98MieJ0R0Us+XLDFPNZzPRdD0iHlJd7gkjI
                  L6lQTDPBe8RXIs407X9zHasEb3Njw02oJqgQflAIXy9EWqcd+nfGbgb4RHBNue5cg+owCvJRoUOj
                  4H5FpkFFMw2MhkSSY8Kn6Cv6RONAJBSeLnnMQGQzz/jYdfKt5hDMT1Ek6WiAnRSO+rDF0TQBLWja
                  BXv1J4oqBUKxcLB9eHJ2urN/+uro9Je9k72d4/PDXRifnR4cnm9v7x5jJGk8wFZiFVGq8YLxl/K0
                  h/4nhiqQLNVIyaDJcUb9CSjRIXycxUROlLPdPegeluNuwnh30u46Hpjb8gK2rmOdYBOefBHeIcEB
                  ouEAhyLIEjBnNxZj4JApKjlJaHcE8+r5i35+5ZDdIOCIE8L4kHAa2+kN88m/Njbhp9qmRVruQsgl
                  C9oloZEGoNNSHJaM59UG3jCmygliCjoas1E7e81YqKMB3j/AKKJsHAGq93Yw8oUMqRzgLUB7TJQa
                  YHtjo1CyRCTGQ3q7VpHAIKK9RCQGGUqvqwTc3m1IuLv9kISGHeDVuGKDQCVxWu4LSGqCCvbOblMq
                  GeUBxNSIopCNRlSaoeukEHkdAINXQ8Kgj8ocFch6yAD7JJiOpch42EOZjJ8vqCA/1DGo607ScRtN
                  vEBb8MtFR9KUEt23UDQYzeJKYjrSAP0sR2nMyvkrEyyBC7hr9eg6MSu2eZX1iS8y3d7mR+YY+qiM
                  ah+kCz54wwKq2pO+Kk4uJW3Ces9xZrNZ1yhbiZHuQlR2Jip1UinCLNAKwkyKvWExWpGUY9IEqai9
                  EwEpFLmE3Iox4cgcQ0OAS5MywC+LFy3uZ1ob6N63dwRZCXvr82lDb07MKowY02cKfzeG7LElTArN
                  N5gUM+3ZFAdrRrleC+feaKYA86m83aSYRp6oF4zPNReK7FH+M2nEjXa8k0xp0KJE70xWgty10wgl
                  NlM18osplZBJWsUSBMHAYK1pyjy7tZUfQSkUCWA5vLy6tswAUebLTT3X9z4WydJ1fM8GPbtkrlnH
                  VJs1GE/B4+taoAq6dgEXly9zL0Y3JM5gYiIim3Ossmu2Qzg6g/jdim1aHHqYdbV6j9sTJFXmJ6yW
                  pXCu8vJgOfS2eX3XMYbKk0kNzViIaZa2R+a5kGOhkb0XYnwkXucgTecZSDpmSlPZnsWH4mRFuAH7
                  OeDmIK+XK6xKk3LvAx4QrlLCS7WVwR57P3NfpX2o2WDVa4atesumxV/T1/NsDB0EhMLrC1QngEfy
                  ilOm9zb6eD1TIQjxiekolGSGziFtP53CvofVtSRcQU3xA1idRDSYQkMSQ+v0SPZcB6sLMqXolNrm
                  TC0E1kWj65lYbne7WLRT/830fttbf56RMP6ZJGn/s3X72wSEOGZxDEn37mlNrYffURBAmajRG3BI
                  IX8Y22UILIxV1cSJkM0KYvX67QMUvOgCqNUxJ9rz3kHzqzR6T2dwBxg3YUJvoHlT8yVNCQ+4D1xs
                  a9+Bv52tnf2qPrLxvak5DsTb3venA1w3+G8Vei9m6APtXKaU0/BeObYedvvYAx08q94fPADCNXHa
                  u8+phF+JB/VArbkUDatc4CEk3E8x1VP10GzAR0JA4mp260U6rxfrBVjKi+UF3X13KfymKIW/olJb
                  CzzW0EQ9Qn09rdQjDFZrqFYm+Fhb9TRRKMCyRN2na0upLHmCQOPNGNM0IStUbFdwEF2Q9AlOK/cq
                  J/nBucba1J0luhsvMUR6Z0sz7P2DhqU60BEEFDutkKQGOjTs1hV2HXTNe1eNm9f/zcygTCGie61N
                  i5Emcmzewn72Y/vWZX7LwxKV71iKCAD+75jGC3ba197/Ah3aaHcNFwAA
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
        - $type: BrowserTest
          name: Type "****"
          testID: 6
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Type "****"
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypePasswordAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: password
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: PasswordTestValue
                    password: AwAAABhnUkkzRkk1WmFva3p0N0xEM3RCYm5nPT0=
            delaySettings:
              delays:
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypeAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: password
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: PasswordTestValue
                    password: AwAAABhnUkkzRkk1WmFva3p0N0xEM3RCYm5nPT0=
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: windows-1252
                url: http://path:18081//parabank/index.htm
                htmlSize: 1591
                html: !!binary |-
                  H4sIAAAAAAAA/71Ye2/bNhD/O/kULAcULVBbea+xZXV5osWaxmjSFUNXFJREW4wlUiOpOEHbD7Rv
                  uSP1jB0nk+s1iR3xdce7+91L7pPj86PLP4cnKNJJ7K279p8bURJ6rtK3MUX6NqUDrOmNdgKlsPdb
                  EBGpqEb4w+Vp5yXuf+Ljv3pBLMjk8wt47pSPIdGk0xjfNAbd8vFFt562sxELaY8L/awcdAhnCdH0
                  +deQqTQmt7DKKXrCklRITbjufzcXGAmZVDv8WAST/ndDojjdURFLvl4zxXwWM33bA9Ih5eWeIBLy
                  ayoU00zwHvGViDNN+99dxyrBW19bcxOqCSqEHxTC1wuR1mmH/p2x6wE+ElxTrjuXoDqMgnxU6NAo
                  uF+RaVDRTAOjIZHkkPAJ+oY+0jgQCYWncx4zENnMMz52nXyrOQTzExRJOhpgJ4WjPmxxNE1AC5p2
                  wV79K0WVAqFYONjcPzo53to9fnlw/OvO0c7W4en+NoxPjvf2Tzc3tw8xkjQeYCuxiijVeM74C3na
                  Q/8TQxVIlmqkZNDkOKX+FSjRIXycxUReKWezu9fdL8fdhPHuVbvreGBuywvYuo51gnV48kV4iwQH
                  iIYDHIogS8Cc3ViMgUOmqOQkod0RzKtnz/v5lUN2jYAjTgjjQ8JpbKfXzCf/WluHn2qbFmm5CyGX
                  zGmXhEYagE5LcVgynlUbeMOYKieIKehozEbt7DVloY4GeHcPo4iycQSo3tnCyBcypHKANwDtMVFq
                  gO2NjULJApEYD+nNSkUCg4j2EpEYZCi9rhJwc7sh4fbmfRIadoBX44oNApXEabkvIKkJKtg7uUmp
                  ZJQHEFMjikI2GlFphq6TQuR1AAxeDQmDPipzVCDrIQPsk2AyliLjYQ9lMn42p4L8UMegrnuVjtto
                  4jnagF8uOpKmlOi+haLBaBZXEtORBuhnOUpjVs5fmGAJXMBdq0fXiVmxzausT3yR6fY2PzDH0Adl
                  VHsvXfDBaxZQ1Z70RXFyIWkT1nuOM51Ou0bZSox0F6Kyc6VSJ5UizAKtIMyk2BsWoyVJOSZNkIra
                  WxGQQpELyC0ZEw7MMTQEuDQpA/yyeN7ifqa1ge5de0eQlbC3Op829GbErMKIMX2m8A9jyB5bwKTQ
                  fINJMdOeTXGwZpTrtXDutWYKMJ/K202KaeSJesH4XHOhyB7lP5NG3GjLO8qUBi1K9NZkJchdW41Q
                  YjNVI7+YUgmZpFUsQRAMDNaapsyzW1v5EZRCkQCWw/OLS8sMEGW+3NRzfe9DkSxdx/ds0LNL5pp1
                  TLVZg/EUPL6uBaqgaxdwcfky92J0TeIMJq5EZHOOVXbNdghHpxC/W7FNi0P3s65XC9afzg4ufj85
                  /nyX/SM8VOYnrBau8LaSJJgSvWnK4zrGcnl2qbEaCzHJ0vZQPRVyLDSy90KMj8SrHLXpLANJx0xp
                  KtuzeF+crAg3/GAGyTnq6+UKvNLk4LseAJBXKeGl2sroj72n3FdpH4o4WPWacazesm4B2XT+PD1D
                  SwGx8fIM1RnhgUTjlPm+jT5eTVUIQnxkOgolmaJTyOOP57QfYXUpCVdQZPwEVkcRDSbQocTQSz2Q
                  TlfB6oxMKDqmtltTc5F23uh6Khbb3S4W/dV/M73f9tZfpiSMn5Ik7X+xbn+TgBCHLI4hC98+rqnV
                  8DsIAqgbNXoNDinkT2O7CIGFsaoiORGyWVIsX9C9hwoYnQG1OuZEO95b6IaVRu/oFO4A4yZM6DV0
                  c2q2xinhAfeBi23sOvC3tbG1WxVMNr43NceBeNv7/rKH647/jULvxBS9p53zlHIa3qnPVsNuF3ug
                  gyfVC4V7QLgiTjt3OZXwK/Gg7ik+F6JhmQvch4S7KaZ6qh6aHflICEhczfa9SOf1Yr0AS3n1PKe7
                  H66NXxe18TdUamuOxwq6qgeor6a3eoDBch3W0gQf6rMeJwoFWJaou3RtKZUljxBovCpjmiZkiYrt
                  Ag6iM5I+wmnp5uUoPzjTaZu6s0R3462GSG9taYa9f9CwVAc6gIBipxWS1ECHht265K6DrnkRq3Hz
                  +n+YGZQpRHSvtWkx0kSOzWvZL35sX8PMbrlfovKlSxEBwP8d04nBTvse/F8DsF3aHhcAAA==
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
        - $type: BrowserTest
          name: Click "Log In"
          testID: 7
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Click "Log In"
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: ClickAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: value
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: Log In
            delaySettings:
              delays:
              - $type: PageLoadDelay
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: ClickAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: value
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: Log In
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: windows-1252
                url: http://path:18081/parabank/overview.htm
                htmlSize: 2247
                html: !!binary |-
                  H4sIAAAAAAAA/+VabXPbuBH+bP8KhOPpyXcWqRfbifXCnJPG0+ukjefitNO53txAJCTCAQkWAG1r
                  fP5B/ZddgARJUaRtpR+aaeyxRWBfsPvsYgECmr3444e3V/+4fIciFTN/f2Y+ZhHBoT+Tas0IUuuU
                  zB1F7pQXSOn4PwYRFpIo5Hy6uui/cqa/JKt/TgLG8edfj+C5bx9DrHC/1r6rNVz7eORW3aY3oiGZ
                  JFz1bKOPExpjRQ7vQypThtdATQh6QeOUC4UTNX3QBiy5iEuOBePB5+mDVlFI92VE4/sbKumCMqrW
                  E1AdksTyBBEX9ymXVFGeTPBCcpYpMn2YeQYEf39vbxYThVHh/LxwviJESqV98q+M3sydtzxRJFH9
                  K4DOQUHeKjDUAE9LNTUtiioY6BIL/AYnn9Hv6DwIeJYoiT7cEHFDye3My3k0N6PAEwmynDteCjIL
                  kPEUicF9RVwdKCQImzvGfBkRopytSHbqMUI7KJGBoKlCUgR1LbdkcQ1eejhZZQyLa+kN3VP3zLbd
                  mCbuNWgAjI08qJp5JvP24WnBw7VRHtIbRMO5E2OaXOKEMDPmnv6r/dvbh5+SV/HUsiI0w1sO4lAP
                  DqGA0Wm8aloOGbMi0gsYATNXdOmgWxqqaO6cnDooInQVQTSPRw5acBESMXcGEGWGpZw7RrP2CXcM
                  TZOQ3D05NOMrno+MGYxls6I0ZDiuWTIetlmiVUC4dMbUFJSWpZYvwKlOesd/d5cSQUkSwJyPCArp
                  ckmEbs68FCqDB+D6FcQ6UETkKCOTIHNngYPPKwFJG05QJlhvy61cqB9kUvGYCPc6XR2iAfwmvC9I
                  SrCampDpWGas9IQsVUySLI8mo7b/o56kYDrkUPk48xgt2PwSfbzgmcoxP9eP6JPUMLTySj3XAiJz
                  9o9Fq5NdT/uJ593e3rraWcmXyg147F3L1EsFD7NAScjy1PEvi9YXqvJ0GcGltvc8wIXDHepqOX6u
                  H9ElhKDODSHN2Dbai0wpnQ6bWEcQL8d/PJ81T8Occlpo2DPptMbEPHYIFl7XBIueXLRoVMK5T0Wy
                  2uqg/8rE1YWlVkcqgk6zOqEoLI0PXWiqySNjzNgVFEMwcOH/nbDAYLDw0Z95lKCPMVWRmT6wso78
                  oqKjKqugcz+Hfyt+FcQ8JQnORXOvP0AH+iu5tUtEZw7UdBRrSJEQ20vLkxqUwImEipBruCpa6AJm
                  e3cSVuKw7LIUr3PpN9CAfFw/Q24JCWaGziUvoInM4BD2R/O/UpGlsBUhMBuXFJY1o+aT6UJv8/RB
                  PyVL/gxFAtZ3IhXsVYqJ9XPegd5DzzPkdUm2Sf+er9CHbCtz67mWp2eVymWmCl33N1O1WPz0ZiZN
                  546Nqw30eZo6mqjni+CM6aWiyfNWCVauHsArA0i8vA686PdB+qflBMmI31pB1O/7dlSqS2eN1q4I
                  VEVDSzFLU2suRsOCWeEF7EC1y0X+X+mOUvdK4JDqjZZZf4oRtFi+i0DItkXVMGS/nDjw3CC9wQz2
                  g+T7Ntr5DabM2HQeb8tDqxxIU2pGzFS+n6l4c0h/NoveBBXuISjT2OKh0VVCg5svjSUIda4unO2w
                  Ya3iwoS5ga2vzr/XgOlwND4+qcsvYG7RZOX4hpJnpgob+tr4+wej08HAHQyeyX+wzWuwM6AQmOD/
                  a2CO9UavFRig7ADMwWg4cDWUX879dQFzcvqyAxig7ALMcKd8aeP+uoA5ffmqAxig7DSVdkPma8fl
                  5auzDlyA8i0nzNlg0AHMmTb8+cD8H2XLeDActoOiKd9wtoyHo1EHMEDZCZgdkfn6oRmNxx3QAOVb
                  zpnx8XEHMEDZCZjReOgOn49MG/vXBc3Jacf+TlO+3Zw5OR6P2guwoewEzPgEkmD0X7HvCE3t5ar5
                  whcizOgqKd6czVnNFVeY6ZOaFhOB3m7l6dnI1fvcdqk/JAuZTlt8qN4J87dAK7LkXD3ymgpQcSZT
                  DHaPHf/74sUU3A5YFhKJQmJuLCRSEVYoxmu0IEhmi2sSKKQ4ijgLZd2S0G+YUxkADf1ea0DMjxxq
                  wLe9+O9vnwu8E4ILQysOLfZn9mRfD3GDBcJpiuaovAHgYcZI77uW04rvjtAvvx5OjSAIudXBxTa7
                  PrgA/mWWmCMh1DsweX+EDvSR6iG6LzHICe6GL3OkREambTy5Q3O0xEzWOCpWrd9dEdUrj41/SwW/
                  W3vmuMcec0vPQT8gWKiHI/h0vHKmHqF7RWPCMzUZD+Dn4bAWf4RcFZGkV7kliEx5Ikndo4bV5XyY
                  A3zTZ3BZna6+resUUHqy2PybQ1rGaabIVa2311ANodtSZsO+5OIdDqKmSBXBXtHV5qhRVByGYnsc
                  U5kGwThv9Jbatt17aPQ1AxBgBXa2RGDbrjJfKqam7hokpcrH7G14L4jKRFny3EXh8wwN0Gv4mzQp
                  1fAPLQO3xbAMXmNkPXMbKQAL2aZ7zeDuFtWG9o3mDyjVl6UXjGPVa/h4hIaDFpxbYKurrCNjn7YR
                  qiJK9P+m2e21pFEqGoy2oGxWHAuxVFhlelKa8dyi6Zv4bnRNkFPUDWdbi57IpQ7TeF1vgKy+fiAQ
                  0ULFhgaos5Iz4hqJnmXNMSQh0oWsMAIq2cS0tdrDrWQz6b6nS/eSMqXLNmRcjN8TKWu1uqdR3dsr
                  YlT20gRyMydZmu17jcwDlKSPSsCy3Dt04TOGD9gTMQxZ7BzBr3MIniYZY1PQ8QD/tD21m+aNk/Xy
                  qXyoXybrRZKI+vUzrHybxIoApPwuxzy2XwPUrsz+VFyZ/Y7s1cGWXMfl5SMS3VeYjwh92UXmFyt8
                  7DrzaaVQZLJYbup1/Avd+4SC2pccqCIxTguQoIH+gtMnpDfuHu3l0eZlst4+2QyoXbLzdF3sPf+N
                  Lq3Z6JwxZLqlXoj1XAtdc11YJJIV199bUU7dpL/pHgTTEDbEO4fAQQqLlf4Wy28LZr4V0GRp98h+
                  B6CYJTBHPLOhnZlvtfj/AZOLibFNJAAA
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              msgOutputProviders:
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                unparsedPostData: username=john&password=demo
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
                referer: http://path:18081//parabank/index.htm
                contentType: application/x-www-form-urlencoded
                baseUrl: "${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                hasPostData: true
                postData:
                  properties:
                  - name: username
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: john
                  - name: password
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: demo
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/login.htm;jsessionid=19CED25D8AD74C42BF93D25ED69F113B"
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/overview.htm"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
                referer: http://path:18081//parabank/index.htm
                baseUrl: "${PATH_BASE_URL}parabank/overview.htm"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/overview.htm"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/overview.htm"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/overview.htm"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/overview.htm"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/overview.htm"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/overview.htm"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/overview.htm"
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/style.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://path:18081/parabank/overview.htm
                baseUrl: "${PATH_BASE_URL}parabank/style.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/style.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/style.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/style.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/style.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/style.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/style.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/style.css"
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/template.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://path:18081/parabank/overview.htm
                baseUrl: "${PATH_BASE_URL}parabank/template.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/template.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/template.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/template.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/template.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/template.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/template.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/template.css"
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://path:18081/parabank/overview.htm
                baseUrl: "${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/webjars/angularjs/1.6.9/angular.min.js"
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://path:18081/parabank/overview.htm
                baseUrl: "${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                - $type: BrowserValidationTool
                  iconName: BrowserValidation
                  name: Browser Validation Tool
                  extractions:
                  - $type: BrowserTestExtraction
                    elementOption: 1
                    contentOption: 1
                    xPath: "//DIV[3]/DIV[1]/P"
                    mode: 1
                    validationMessage: " - Validation failed for property \"text\"\
                      : Actual value found on the page \"${ActualValue}\" must be\
                      \ equal to expected value \"John Smith\"."
                    name: Validate "John Smith"
                    validate: true
                    elementName: P
                    propertyName: "text[1]"
                    origValue: John Smith
                    expectedValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserValidationTool_ExpectedValue: John Smith
                    windowIdentifier:
                      BrowserValidationTool_WindowName: ""
                      BrowserValidationTool_WindowIndex: 0
                    locator:
                      criteria:
                        $type: XPathCriteria
                        BrowserValidationTool_LocatorXPath: "//DIV[3]/DIV[1]/P"
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
      - $type: BrowserTest
        name: Click "Open New Account"
        testID: 8
        tool:
          $type: BrowserTestingTool
          usesAutomaticallyGeneratedName: true
          iconName: BrowserTest
          name: Click "Open New Account"
          commands:
          - windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: ClickAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: a
                  attributeName: text
                  attributeValue:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      BrowserTestingTool_LocatorAttributeValue: Open New Account
          delaySettings:
            delays:
            - $type: PageLoadDelay
            - $type: ElementDelay
              windowIdentifier:
                WindowName: ""
              elementState: 1
              specifiedLocator:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: ""
          originalCommand: true
          command:
            windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: ClickAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: a
                  attributeName: text
                  attributeValue:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      BrowserTestingTool_LocatorAttributeValue: Open New Account
          browserContents: true
          contents:
            windowContents:
            - parentUrl: ""
              charSet: windows-1252
              url: http://path:18081/parabank/openaccount.htm
              htmlSize: 2411
              html: !!binary |-
                H4sIAAAAAAAA/81Ze2/cNhL/O/4UjBA0NuKVdr1+7oOp60ta93KN0Tg9HHJBwZW4K8Z6nUjZXqT5
                QPctb2b04j7kuMEdcBs4oyHnNyRnhpwRNXn6l7cX1/+4esVCE0d8Z0JkEkoR8Ik2y0gys8zk1DHy
                3ni+1g7/3g9FrqVhzvvr171TZ/whWfxz5EepuPm4D8+9+jEQRvQs/t5i3Ppx322bqTVUgRwlqdmt
                mZ5IVCyM3PscKJ1FYgm9iWRPVZyluRGJGX/BCczTPG4kZlHq34y/oIoK3dOhij/fKq1mKlJmOQLV
                gUxqGT9M889ZqpVRaTISM51GhZHjLxOPjMB3njyZxNIIVi1+Wi2+7QiNyXryX4W6nToXaWJkYnrX
                YDqH+SVX2RANPG7UWFqMMjDQlcjFDyK5YX+wt5lM2Lnvp0ViJl7ZjYKRgu4wl/Op42UgPgNxz8gY
                Vm6kiz5iuYymDs1ch1IaZ8OJnXoI9CeUaD9XmWE6920td3L2CRboiWRRRCL/pL2Be+ye1bwbq8T9
                BBrAvIQHVROPgm4HnmZpsCTlgbplKpg6sVDJlUhkRGM+wT/rvyc78GtkTZrVooxNxMYCRYCDgxdg
                dBUv1mcOwbKQ2vMjCdNcqLnD7lRgwqlzdOywUKpFCI48PHDYLM0DmU+dPjg4ElpPHdKMaxIdQ6sk
                kPdfHTpKF2k5sohgrDogmokMhtZMhoNtM0EV4C6MGEtBM7OslvNFhvHu8Ff3mcyVTHzY7qFkgZrP
                ZY7sxMvgUPDAuLw1MTpK5qWVGQXI1JkJ/2aRQ6gGI1bk0e7GskpQzy+0SWOZu5+yxR7rw78k7eUy
                k8KMyWXoyyJqViLnJpZJUXozUnX7O9yfMHWIoeZx4kWqEuON9cUsLUxp83N8ZO81mmGrrJb5rfKl
                LsXfVVynOO74kefd3d25uFidzo3rp7H3SWdelqdB4RsNUZ45/KrivlGVhyeIaLS9SX1RLbhDnRXj
                5/jIrsAFtjS4tIg2rT0rjMFwWLV1CP5y+MPxjDJr02m2BZq90M5Wn9BjB7BatQWsWkpoxbTgck1V
                sNanA/41gYsHi3WOtB0YZnZHdbCsETxo2s2jYxFF13AYwgRn/O8y8skGM85+TsOEvYuVCWn7QFI9
                4NU5ztqogsad0vwb/mtNnEIOECW0XDUlhV/kXZsYOmLA0nGLY8q7KiBKnGZvq+ZHaDC5SDScCKWG
                64pjr2G3dwdhC4eMG2ViWaJ/AAbicfkI3BwCjIYuka+BZTQ4uP3B+G9VFBlUIRJ241xBWiM176mJ
                XZThwy6TefoIRTmkdqkNlCnVxvq1bGBvoOUReDyS66B/ky7Y22Ijcu1YK8OzDeUmUnM891dDtc5+
                WMhk2dQ5D4LKyedZ5mAzbpU8jSLMEm3vhcmjJmWAlPYh2srN/7TXA9zlfMR0mN69htKK9Xq8HkXh
                WVm1b1cAKsJB3UN5aFvkhoNKFms3VKyLGewaUE50d89WnuVKGwWFHzzfikgF1UCYz2gDhsJQhcLS
                eT0Eu0uLKGDLtGCRuoHcljLcUC9xl9LWrBRoGUkIBSofypKtHFYlGWSMtcFBb1r4oQyameADVKw9
                KMHMkgyuElwG6tJuqVwGbynXsil73n9OQnEaYIW1TapZG5zQrPlN0lIFDFpIyvc1CrTkBdj44qdX
                F3+9/OXHiVeKPkbNAFLd+W8AeteJgjKNBmoMNss5/u2sSpEfzhkkHBUXMfrh2aDfd/t9FkPWZzMo
                LCTV2GA7BVaEWkNpVh1vDN2nYnIfOkklC5ddQRmmJVTLaQpEJEzekyMWDQq11OfRHM+jWjP4CmKt
                Pjsf8Pg8T+MqXi6D/5brF9LUBy2GcevtakIbDkeR0vq6EXJBP2yNZq2QyGs4Ltq/YbMla2UhD1We
                jcQMxxocDA+PnMbPJbceMtTceH5DwyHWvY0G5DiRbsTR8YmFQI4T6UYcn5xaCOQ4kW7EyemZhUCO
                E+lGnPX7FgI5TqQTMewPBi2COE6kGzE4OLAQyHEi3YiD4dBCIMeJdCOGh4cWAjlOpBtxdGx5kDhO
                pBtxfGJ5kDhOpBtxemb5gzhOpBNx2B9Y/iCOE+lGDA4sfxDHiXQjDoaWP4jjRLoRh0eWdYnjRLoR
                R8fWDiOOE+lGHJ9Y/iCOE+lGnJxa/iCOE+lGnJ5ZO4o4TqQTcTQ4sPxBHCfSjRgeWtYljhPpRhwe
                WdFOHCfSjTg+saxLHCfSjTg5taxLHCfSjTg9s6xLHCfSiTju9y3rEseJdCMGA2t/EMeJdCGODodW
                tJccJ9IiHs7JWKvxSZnFynubsqhy1t716jHWqzO8LaDqs8z/WKFRZUiNVB/KJNhSI+5slo+/Sl1E
                pqPzVZ5DhsO+arydSX0lhCPfCkh/WQZVU3N1BK/Skdx9vlLlPt9nHz7ujQkC4m5b8NqCWPCCJJQJ
                9P6w+4wK1n32DF+/99jnnabuKXvcZmFThslyvK2/Wt2UzUWkt4uUa+ySoPoPej983N61VimMN2Zp
                1Ro4SL06XBCzfrRKFN5tLjp+hxej+6VHLyj1xYz2IGMNDry60nD22Wesy+DtZTTsw+/L3opa/LlQ
                biW7zci51BnUMXJ9BmvzFu2ka4SLd8bjx4A2y+o1gQ/9j5uKts3dF8YPHz/5xqGt5LZx2rYvm2FF
                O/EhX2HYF3kEItt9lUt4ha2c/rL23GUwJdd9B4Vv1XdNO//FQ/HEXjDnu5UaeOqwF18xN1Sb4y3B
                BcW92YV57zPnfxc21qZc21Adws0OXd3DW6Rbw10G61G5seRO7PvScXhJcatMee2BVn6pVkxrD/b/
                Eqn1U/NQD2Ypk/j/xuHyGN884tRcE6tPzk3P4Q7RRpgCjw+akluxnPXZy9WmEXOqWHQ2taBzGx3E
                vLQZwOKdHbxe1ipWNECm0WkkXULs1qK5NEWewHsi+ruaBETAiHhUu2F19IP1NWTl9qd5ah7sDx7z
                NDUytz+RlNnf6mw7oKu8b6TH7VdV1rXuT9W17h+svt7awHVcsD+A6L5mfwD0bZft36zwoSv3ryuF
                aqmI9apeh7/G1q8osD7EKSNjkVVGAob9TWRfQa/cj9cXnKsfPLCEqyPA+hCUZku6WXT4v9lVPW12
                HkWMmjWehRjagdvcoljfDfCzqnHsKf2GLQyiXpjRn3aBw4zIF/iR9fdZRF+u1kW2r6j+TlXtEtgj
                Hn1KnNBHV/4f0BVc/uweAAA=
              isTopLevelWindow: true
            browserType:
              $type: SingleBrowserType
              typeValue: 3
          browserOutputProvider:
            msgOutputProviders:
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/openaccount.htm"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
              referer: http://path:18081/parabank/overview.htm
              baseUrl: "${PATH_BASE_URL}parabank/openaccount.htm"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/openaccount.htm"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/openaccount.htm"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/openaccount.htm"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/openaccount.htm"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/openaccount.htm"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/openaccount.htm"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/openaccount.htm"
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://path:18081/parabank/openaccount.htm
              baseUrl: "${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
            contents:
              $type: BrowserContentsOutputProvider
              outputTools:
              - $type: BrowserContentsViewer
                iconName: BrowserContentsViewer
                name: Browser Contents Viewer
              - $type: AccessibilityScanTool
                allowToolbar: false
                iconName: AccessibilityScanTool
                name: Web Accessibility Scan
                excludedElements:
                - class=title
                outputProvider:
                  name: Errors
                locator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: id
              name: Browser Contents
            traffic:
              $type: NamedToolOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: HTTP Traffic
      - $type: TestSuite
        name: "Form: http://path:18081/parabank/openaccount.htm"
        testID: 9
        abortOnError: 1
        runMode: 2
        tests:
        - $type: BrowserTest
          name: Click "Open New Account" 2
          testID: 10
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Click "Open New Account" 2
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: ClickAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: value
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: Open New Account
            delaySettings:
              delays:
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: ClickAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: value
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: Open New Account
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: windows-1252
                url: http://path:18081/parabank/openaccount.htm
                htmlSize: 1832
                html: !!binary |-
                  H4sIAAAAAAAA/81Ye08cNxD/Gz6FsaIEFG4XSJu091hKaFCp0oISaBVRFPl2fbeG3fXW9nKcCB+o
                  37IzXu/jXkAiVepFSfyYGc/jN+Px9jd+Pjk8+3T6jsQmTYL1vv2vH3MWBX1tpgknZprzATX81vih
                  1jT4KYyZ0twQen521PmB9i6y8V/dMJHs+nIbxp1qGDHDOq35bWviVcNtr1m2q7GIeDeTZrOadFgm
                  Umb41l0kdJ6wKexmnGyINJfKsMz07lGBkVRpTTFMZHjdu0cRjrujY5He3QgthiIRZtoF0RHPKpow
                  luoul1oYIbMuG2qZFIb37vu+dUKwvrbWT7lhxBk/cMY3G7ExeYf/XYibAT2UmeGZ6ZyB6ygJy5nz
                  ITq4V4tpSTHCwEGnTLG3LLsmX8hJzjNyEIayyEzfL7eRMBGwHSs+GlA/B/IhkPuGp2C54R7GiCie
                  DKjVXMecG7oQxJVyLNNXCNGhErkhWoVtKRM+vAIDfZaNi4SpK+3veq+9H6u5l4rMuwIJ4F7LD6L6
                  vgXdOoyGMppa4ZG4ISIa0JSJ7JRlPLFnruHf1j9r6/CraY3MK1JC+mzBQBbh4RAFOF2k43nNASxj
                  rv0w4aDmWIwomYjIxAP6/WtKYi7GMQTyuz1KhlJFXA3oDgQ4YVoPqJWMNrEVR4ss4rePHp3IsSxP
                  ZgmcVQGiVmT3VUuTV7vLNEEREC5ETEtArVle0YUsR7zT4N1tzpXgWQjpHnMSidGIK5z2/RyKgg/O
                  DRoXY6C4Kr1MLEAGdMjC67ECqEZdUqhkc8GskqkTFtrIlCvvKh9vkR34k8mO4jlnpmdDhrEsktoS
                  PjIpz4oymomo1j9ifoLqgKF62PcT4ciC2vtsKAtT+vwAh+RcoxuW0mqubkTIdUn+0c1WkmPGd31/
                  Mpl4aKyWI+OFMvWvdO7nSkZFaDSgPKfBqZt9oygfKwirpb2XIXMGrxDXwvgBDskphKBNDSEtkkVv
                  DwtjEA6zvo4hXjR4GM9IM6dOnRbo9kLTpTGxwxWMzuoWo1spWd2kYS5tcmCtqgP+rYGLhaVVR5oN
                  hFl7wxWWuf+w0DTJo1OWJGdQDEHBYfAnT0Lrg2FAfpVxRj6mwsQ2feBS3QtcHScNqmBxvXT/Qvwa
                  F0u4A1jJWlptL4Xf+aS5GFZgoCXjBs/kEweIkk+TE7f8BAlGsUxDRSglnLkZOYJsXw3Chh1u3CRn
                  05L7LUwAj9Mn8I0AYPbokvMIpsQeDmF/EP+NiCKHLoRDNo4EXGtWzLldIoclfMhxNpJPEKTgaufa
                  QJviEutDuUDew8oT+LEkV6B/L8fkpFhAbhtrJTwbKNdIVVj3Z6Fa3X7YyOT5gB5EkQvyQZ5TXMZU
                  UTJJ8JZodg+NSuorA6h0CGgrk3+j0wG+41GX6FhOjqC1Ip0OwHVh6wPXRWJws1JBYCGtd5bLBzHx
                  brVjr6kal7br4dEG5MeuI80DiNVYMQOtg437NpnKQhGXF0RouEMmBFPFswnnuCArPyFdBtlS0WZF
                  OuSqa9MUooQehW139nFEqwoFALuBLhHjtQ9EcOe+edO2ZQhYFNmYBnanjKQ9uYyZ9RIHuC7z1BI3
                  vlNKKrvnYr7erxojNOaGgbV5TgakbqDgQkn45ouZWL/YJheXWz3LAuReE/Y2IYYdKEdFZrNo85mN
                  yzZ5hpfQFrlbt/z4K3e8GgIDYlTBe8v2nXUDMmKJXk5S2riKAntLDbsXl8u3PM0THhoendiWpbeg
                  5ZiburQNGuvQINL6WSuReLO+7j9Debid+jZNq/YEGta9vd093+FG021yZ0TKIYe7r3bgd781IxZ/
                  HrRO2WZ9suI6B7DyeQ3m9GaN0hWHhy+n3lOY5rwCMuYILnYuFwUt0x1aijB+uvJ1QBvKZec0a/eL
                  sCqGcEU+FCuEPfSSQLI8VgqaRu6Cvl9F7hiyFUP3vMnrM/tuefkQnshLQp+PlEzrUjCg5OUj7vZE
                  1FsCLnhGmk3Qe5vQ/w42raScS6gVxHWGzubwEup2QZxH5YLJK3nPy8C1Kyl6lGI5bbm2fdj/BanV
                  qB5Uh7WEcfx3obg8JTZPqJpzZFXlXIwcZog2cDNi+bAqeW4awMtqf3apS6jDIl2UgsGtZdjJfnsC
                  vNi5QtNXiZiRADeNltBgWY7NilRxUyi4zAnG2ykBCOjaOYpd8DrGofVNYKYHqkf1oP3sH0lpuGp/
                  KIBLdnaz2YCtsuu2w+UNW+tx84t73HwhVZO3wLfimfkAx+rH5gNM3/bk/GaBDz08Hxc6kqpI9axc
                  6OJx9REBrc9RwvCU5c5JMCG/sfwR7plXYtXmzz77sU+rEND6HCLzqe2vafAPOa3UJgfwYLHLGmsh
                  Qjtq9ZnN6xk/LhraVukPXCGAema6Xx0CSgxTY/zU+HmY2O838yTLLaq+1rgsgRzx7Qe1vv30GPwL
                  h4uuIfIVAAA=
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              msgOutputProviders:
              - $type: HttpMessageOutputProvider
                name: "${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                unparsedPostData: ""
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                accept: "application/json, text/plain, */*"
                referer: http://path:18081/parabank/openaccount.htm
                contentType: application/json;charset=UTF-8
                baseUrl: "${PATH_BASE_URL}parabank/services_proxy/bank/createAccount"
                hasUrlArgs: true
                urlArgs:
                  properties:
                  - name: customerId
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 12212
                  - name: newAccountType
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 0
                  - name: fromAccountId
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 12345
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${PATH_BASE_URL}parabank/services_proxy/bank/createAccount?customerId=12212&newAccountType=0&fromAccountId=12345"
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                - $type: AccessibilityScanTool
                  enabled: false
                  allowToolbar: false
                  iconName: AccessibilityScanTool
                  name: Web Accessibility Scan
                  outputProvider:
                    name: Errors
                  locator:
                    criteria:
                      $type: AttributeCriteria
                      elementName: any
                      attributeName: id
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
      - $type: BrowserTest
        name: Click "Accounts Overview"
        testID: 11
        tool:
          $type: BrowserTestingTool
          usesAutomaticallyGeneratedName: true
          iconName: BrowserTest
          name: Click "Accounts Overview"
          commands:
          - windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: ClickAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: a
                  attributeName: text
                  attributeValue:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      BrowserTestingTool_LocatorAttributeValue: Accounts Overview
          delaySettings:
            delays:
            - $type: PageLoadDelay
            - $type: ElementDelay
              windowIdentifier:
                WindowName: ""
              elementState: 1
              specifiedLocator:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: ""
          originalCommand: true
          command:
            windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: ClickAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: a
                  attributeName: text
                  attributeValue:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      BrowserTestingTool_LocatorAttributeValue: Accounts Overview
          browserContents: true
          contents:
            windowContents:
            - parentUrl: ""
              charSet: windows-1252
              url: http://path:18081/parabank/overview.htm
              htmlSize: 2257
              html: !!binary |-
                H4sIAAAAAAAA/+Va6XLcuBH+LT0FzFJlR7sacg4d1hz0yo5V2ZQTq9ZyUqnN1haGxAwhgwQDgDpK
                qwfKW6YBgsdwSEnj/IgqlkoaAn2g++tGAwRm9uqPH99d/uPiPYpUzPzdmfmYRQSH/kyqO0aQukvJ
                3FHkVnmBlI7/YxBhIYlCzufL8/5rZ/pLsvrnJGAcf/n1AJ77xWOIFe7X2re1hls8HrhVt+mNaEgm
                CVe9otHHCY2xIvv3IZUpw3dATQh6ReOUC4UTNX3QBiy5iEuOBePBl+mDVmGl+zKi8f01lXRBGVV3
                E1AdkqTgCSIu7lMuqaI8meCF5CxTZPow8wwI/u7OziwmCiPr/Nw6XxEipdI++VdGr+fOO54okqj+
                JUDnoCBvWQw1wNNSTU2LogoGusACv8XJF/Q7OgsCniVKoo/XRFxTcjPzch7NzSjwRIIs546XgswC
                ZDxFYnBfEVcHCgnC5o4xX0aEKGcjkp16jNAWSmQgaKqQFEFdyw1ZXIGXHk5WGcPiSnpD99g9Ldpu
                TBP3CjQAxkYeVM08k3m78LTg4Z1RHtJrRMO5E2OaXOCEMDPmjv6r/dvZhZ+SV/G0YEVohjccxKEe
                HEIBo9N41bQcMmZFpBcwAmau6NJBNzRU0dw5OnZQROgqgmgejhy04CIkYu4MIMoMSzl3jGbtE+4Y
                miYhuX1yaMZXPB8ZMxiryIrSkOG4Zsl42GaJVgHh0hlTU1BalhZ8AU510jv++9uUCEqSAOZ8RFBI
                l0sidHPmpVAZPADXryDWgSIiRxmZBJk7Cxx8WQlI2nCCMsF6G27lQv0gk4rHRLhX6WofDeA34X1B
                UoLV1IRMxzJjpSdkqWKSZHk0GS36P+lJCqZDDpWPM49Ry+aX6OMFz1SO+Zl+RJ+lhqGVV+q5FhCZ
                s3+yrU52Pe0nnndzc+NqZyVfKjfgsXclUy8VPMwCJSHLU8e/sK2vVOXpMoJLbR94gK3DHepqOX6m
                H9EFhKDODSHN2Cbai0wpnQ7rWEcQL8d/PJ81T8Occlpo2DPptMbEPHYIWq9rgrYnF7WNSjj3ySZr
                UR30X5m4urDU6khF0GlWJ9jC0vjQhaaaPDLGjF1CMQQDF/7fCQsMBgsf/ZlHCfoUUxWZ6QMr68i3
                FR1VWQWduzn8G/GrIOYpSXAumnv9ETrQX8lNsUR05kBNh11DbEJsLi1PalACJxIqQq7h0rbQOcz2
                7iSsxGHZZSm+y6XfQgPy8e4ZcktIMDN0LnkOTWQGh7A/mv+ViiyFrQiB2biksKwZNZ9NF3qXpw/6
                KVnyZygSsL4TqWCvYifWz3kH+gA9z5DXJblI+g98hT5mG5lbz7U8PatULjNV6Lq/nqp28dObmTSd
                O0Vci0CfpamjiXq+CM6YXiqaPO+UYOXqAbwygMTL68Crfh+kf1pOkIz4TSGI+n2/GJXq0lmjtSsC
                VdGwoJilqTUXo6FlVngBO1Dtss3/S91R6l4JHFK90TLrjx1Bi+W7CISKtqgahuyXEweeG6S3mMF+
                kHzfRju7xpQZm87iTXlolQNpSs2Imcr3MxVvDunPZtGbIOsegjKNCzw0ukpocPOlsQShztWFczFs
                WKu4MGGuYeur8+8NYDocjQ+P6vILmFs0WTm+oeSZqcKGvjb+/t7oZDBwB4Nn8u9t8hrsDCgEJvj/
                GphDvdFrBQYoWwCzNxoOXA3l13O/LGCOjk86gAHKNsAMt8qXNu6XBczxyesOYICy1VTaDpmXjsvJ
                69MOXIDyLSfM6WDQAcypNvz5wPwfZct4MBy2g6Ip33C2jIejUQcwQNkKmC2RefnQjMbjDmiA8i3n
                zPjwsAMYoGwFzGg8dIfPR6aN/WVBc3Tcsb/TlG85Z45POvZ3mvLtAnN0OB61r0yGshUw4yOYHaP/
                in1LaGpvnc034RBhRleJPVIwh1iXXGGmj7BaTAR6u5XHpyNXvwC0S/0hWch02uJD9bKcvx4XIkvO
                1SPv7wAVZzLFYPfY8b+3b+zgdsCykEgUEnOVI5GKsEIxvkMLgmS2uCKBQoqjiLNQ1i0J/YY5lQHQ
                0C/8BsT8LKYGfNuJyO7mgcl7IbgwNHuaszsrrjz0ENdYIJymaI7KqxEeZoz0vms5xvnuAP3y6/7U
                CIKQW53obLLrEx3gX2aJOStDvT2T9wdoT58176P7EoOc4K75MkdKZGTaxpM7NEdLzGSNo2LV+t0V
                Ub3yPP23VPDbO8+cgxXn/9Jz0A8IdjDDEXw6XjlTD9C9ojHhmZqMB/DzsF+LP0KuikjSq9wSRKY8
                kaTuUcPqcj7MAb7pM7gKna6+xuwUUHqyFPk3h7SM00yRy1pvr6EaQrehrAj7kov3OIiaIlUEe7ar
                zVGjyJ4S4+KcqjINgnHW6C21bbr30OhrBiDACuxsicCmXWW+VExN3TVISpWP2dvwXhCVibLkuQvr
                8wwN0Bv4mzQp1fAPLQO3xbAMXmNkPXMbKQAL2bp7zeBuF9WG9rXmDyjVt8jnjGPVa/h4gIaDFpxb
                YKurrCNTPG0iVEWU6P9Ns9trSaNUNBiLgrJecQqIpcIq05PSjOfapm/iu9Y1QY6tG86mFj2RSx2m
                8abeAFl9L0MgolbFmgaos5Iz4hqJXsGaY0hCpAuZNQIq2cS0tdr9jWQz6b6jS/eSMqXLNmRcjD8Q
                KWu1uqdR3dmxMSp7aQK5mZMKWtH3BpkHKEmflIBlubfvwmcMH7AnYhiy2DmAX2cfPE0yxqag4wH+
                aXtqV/BrVw7lU/lQv2XXiyQR9Xt5WPnWiRUBSPkll3lsvx+p3SX+yd4l/o6KO5UNuY5b3Uckuu92
                HxH6uhver1b42D3v00qhyGSxXNfr+Oe69wkFtW9/UEVinFqQoIH+gtMnpNcuZYtbtfVbdr19KjKg
                9u0Dnt7Zvee/0UVhNjpjDJluqRdiPddC19yj2kQqxPUXepRTN+lvugfBNIQN8dYhcJDCYqW/3vPb
                gpmvSzRZ2j0qvhxhZwnMEc9saGfm6z7+fwDDVIZ3ZiUAAA==
              isTopLevelWindow: true
            browserType:
              $type: SingleBrowserType
              typeValue: 3
          browserOutputProvider:
            msgOutputProviders:
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/overview.htm"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
              referer: http://path:18081/parabank/openaccount.htm
              baseUrl: "${PATH_BASE_URL}parabank/overview.htm"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/overview.htm"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/overview.htm"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/overview.htm"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/overview.htm"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/overview.htm"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/overview.htm"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/overview.htm"
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://path:18081/parabank/overview.htm
              baseUrl: "${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/services_proxy/bank/customers/12212/accounts"
            contents:
              $type: BrowserContentsOutputProvider
              outputTools:
              - $type: BrowserContentsViewer
                iconName: BrowserContentsViewer
                name: Browser Contents Viewer
              - $type: CustomTool
                allowToolbar: false
                iconName: DefaultTool
                name: Selenium Screenshot Tool
                config:
                  $type: CustomToolConfiguration
                  ConfigClassName: com.parasoft.soavirt.tool.screenshottool.ScreenshotTool
                  className: com.parasoft.soavirt.tool.screenshottool.ScreenshotTool
                  name: Selenium Screenshot Tool
              - $type: AccessibilityScanTool
                enabled: false
                allowToolbar: false
                iconName: AccessibilityScanTool
                name: Web Accessibility Scan
                outputProvider:
                  name: Errors
                locator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: id
              name: Browser Contents
            traffic:
              $type: NamedToolOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: HTTP Traffic
      - $type: BrowserTest
        name: Click "Log Out"
        testID: 12
        tool:
          $type: BrowserTestingTool
          usesAutomaticallyGeneratedName: true
          iconName: BrowserTest
          name: Click "Log Out"
          commands:
          - windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: ClickAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: a
                  attributeName: text
                  attributeValue:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      BrowserTestingTool_LocatorAttributeValue: Log Out
          delaySettings:
            delays:
            - $type: PageLoadDelay
            - $type: ElementDelay
              windowIdentifier:
                WindowName: ""
              elementState: 1
              specifiedLocator:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: ""
          originalCommand: true
          command:
            windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: ClickAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: a
                  attributeName: text
                  attributeValue:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: StringTestValue
                      BrowserTestingTool_LocatorAttributeValue: Log Out
          browserContents: true
          contents:
            windowContents:
            - parentUrl: ""
              charSet: windows-1252
              url: http://path:18081/parabank/index.htm?ConnType=JDBC
              htmlSize: 1498
              html: !!binary |-
                H4sIAAAAAAAA/6VYe28UNxD/O/kUjishkLjbEAhq7/aWhgACiZATCUVVWyHvru/WOa/t2t5cTsAH
                6rfs2Pu8d0mTXOLHzNjz+s044dGry/Pr38evUWZzHh2G/k+YUZJGobELTpFdKDrClt7ZIDEGR78m
                GdGGWoQ/Xb/p/YyHf4jpn4OESzL76zGMe/UwJZb0OvO7zqRfDx/322W/mrGUDoS0D+tJjwiWE0sf
                fU2ZUZwsYFdQdMRyJbUlwg6/uwtMpM4bipjLZDb87kRU3D2TsfzrLTMsZpzZxQBEp1TUNEkm9Vcl
                DbNMigGJjeSFpcPvYeCNEB0eHIQ5tQRVyo8q5duNzFrVo38X7HaEz6WwVNjeNZgOo6ScVTZ0Bh42
                YjpSLLNw0Jho8pKIGfqGPlOeyJzC6FJwBiq7dSamYVCSOiZYn6FM08kIBwpYYyAJLM3BCpb2nb+Q
                pnyEvRYmo9TiNYduleOZfkCISTRTFhmddKXMaXwDygZETAtO9I0JnvSf93+p5/2cif4NSABTe34Q
                FQY+AA9hFMt0gaSA8EhHOJVJkYMp+1xOgaswVAuS0/4E1s3DR8PyGim7RQyoc8LEmAjK/fKB+5S/
                Dg7hqyGzUtVUCIVkzQokdTcEt8EVWT5dVQ+ia0pNkHAKukzZBKM5S202wqfPMcoom2bg+WcnGMVS
                p1SP8DFEBCfGjLCX7BQnW45mIqV3e48GY8jyZMLhrDqCmos8edq5ydMnm27iRIBPXVh1BDQ3UzVd
                QpRLEBy9vlNUMyoSwIeMopRNJlS7aRgoQJEAjBu1JnbepLq0MvJRNMIxSWZTLQuRDlCh+cM1tUqm
                nvNi/0ZNH6Fj+Bayp6mixA69u5wfC95oQScWwqMoPclZvX7lkhmuDUHWDMOAs4osaixPYlnY0t5n
                bog+GWeCjbQQe7csoaYkv6pmW8kdPAyCYD6f952iRk5sH7I7uDEqUFqmRWINpIHC0bia3VNU4OCG
                NNLey4RUCm8R14nvMzdEYzB/lxrcWfB1a8eFtS4Ulm2dAWLhaHcsO5qV6zQp4cxeGLzRJ364hbHS
                usNYrZSs1aRlLnWqAvWgCw/u00Sug58OhrQbLta6GxWy1H8cxITZSXReGAvaavTeIRbg2kknLTyK
                dbDHlTDkAK3agoROnO+6ZiyRz+mEoOxkEsSML6+uvQDwkPsVqiiMo08VOIZBHPmk9Fvu6DbnPfow
                oSDSWzxvQMFv4OpCNdZidEt4AQsOHbzx2iPHwDYHbPmhI1XFtPnYZnfptD0iTRHnrNWjCtT64uAJ
                9E50BIaBM3wJdG34cClnhSqj543UU2mRPwsxMZEvykBSq0yaTpmxVJdsH6tZQ9wJt5WAKYOr3W5i
                RDvYXg40iCyjiKjVq4EIRw9EbNQQ6ijsRt1UbUkOfYx086ZEdOioIP2vL1ALZDswL6hLxIu5SeFi
                n5nNUk3m6A3A+X7IXGW/1kQYqB/3ZD/PaDKD5ohDG7cDgbexX5AZRa+ob/7MGkCsG9HO5XY7+s2q
                XftvpnRZ/eLLnKT8AcnV8IsP4bscLvaScQ5gvNiv0XYZZ0kCJdaitxCIUv8vUdu8VBmq6RFyqbsV
                YLlOfoSiji6Aos2J7Fn0HppVY9EHOge5MO+and5Cw2dWy0xtbjgDDjs+DeDn5PjktKlZHie6GgoQ
                7u7w03PcNtnvDPog5+gj7V0qKmi6VPa2izjFEdz1qOnLNzhqB/ezZe7aRbV9zYbau9W6tdBNll2G
                lGbUDLpN8ERKAKpux1zBbLvZbsBW2RCs6bix3L+tyv03VGu1xrel8drBsb392sF0vybs3gJ3tWL7
                hUJRKnKzLNeXoiLfI6DzgmPwFiRVFbuCCbogag/3Ut90Xk5WGmFXM+sI6DwOpFr4coWjf9C4vjY6
                g+TwywZekc5tNO233UGb6O5tbnH3Sr+5FVQYROzgh10Azxmip+6l/iXm/jWzSrJZo/rtUmUJ5Ejg
                mkCg9P8a+RcGQvHpMREAAA==
              isTopLevelWindow: true
            browserType:
              $type: SingleBrowserType
              typeValue: 3
          browserOutputProvider:
            msgOutputProviders:
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/logout.htm"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
              referer: http://path:18081/parabank/overview.htm
              baseUrl: "${PATH_BASE_URL}parabank/logout.htm"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/logout.htm"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/logout.htm"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/logout.htm"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/logout.htm"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/logout.htm"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/logout.htm"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/logout.htm"
            - $type: HttpMessageOutputProvider
              name: "${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
              referer: http://path:18081/parabank/overview.htm
              baseUrl: "${PATH_BASE_URL}parabank/index.htm"
              hasUrlArgs: true
              urlArgs:
                properties:
                - name: ConnType
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: JDBC
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${PATH_BASE_URL}parabank/index.htm?ConnType=JDBC"
            contents:
              $type: BrowserContentsOutputProvider
              outputTools:
              - $type: BrowserContentsViewer
                iconName: BrowserContentsViewer
                name: Browser Contents Viewer
              name: Browser Contents
            traffic:
              $type: NamedToolOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: HTTP Traffic
