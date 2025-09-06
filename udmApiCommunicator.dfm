object dmApiCommunicator: TdmApiCommunicator
  Height = 480
  Width = 832
  object RESTClient: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 72
    Top = 40
  end
  object RESTRequestListVm: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponseListVm
    SynchronizedEvents = False
    Left = 464
    Top = 80
  end
  object RESTResponseListVm: TRESTResponse
    Left = 464
    Top = 144
  end
  object RESTRequestStopVm: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponseStopVm
    SynchronizedEvents = False
    Left = 632
    Top = 80
  end
  object RESTResponseStopVm: TRESTResponse
    Left = 632
    Top = 144
  end
  object RESTRequestStartVm: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponseStartVm
    SynchronizedEvents = False
    Left = 464
    Top = 248
  end
  object RESTResponseStartVm: TRESTResponse
    Left = 464
    Top = 312
  end
end
