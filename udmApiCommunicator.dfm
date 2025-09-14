object dmApiCommunicator: TdmApiCommunicator
  Height = 480
  Width = 832
  object RESTClient: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 72
    Top = 40
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 464
    Top = 80
  end
  object RESTResponse: TRESTResponse
    Left = 464
    Top = 144
  end
end
