import onnx

# Load the ONNX model
model = onnx.load("./onnx_model.onnx")

# Check that the model is well formed
onnx.checker.check_model(model)

# Print a human readable representation of the graph
print(onnx.helper.printable_graph(model.graph))
