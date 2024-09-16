# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: hello.proto for package 'hello'

require 'grpc'
require 'hello_pb'

module Hello
  module Hello
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'hello.hello'

      rpc :Hello, ::Hello::HelloRequest, ::Hello::HelloResponse
      rpc :HelloServerStream, ::Hello::HelloRequest, stream(::Hello::HelloStreamResponse)
      rpc :HelloClientStream, stream(::Hello::HelloStreamRequest), ::Hello::HelloResponse
      rpc :HelloStream, stream(::Hello::HelloStreamRequest), stream(::Hello::HelloStreamResponse)
    end

    Stub = Service.rpc_stub_class
  end
end
