import 'package:parabeac_core/input/entities/layers/abstract_layer.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_visual_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/helpers/pb_context.dart';
import 'package:parabeac_core/interpret_and_optimize/value_objects/point.dart';

abstract class PBNakedPluginNode extends PBVisualIntermediateNode {
  /// The allow list semantic name to detect this node.
  String semanticName;

  final String UUID;

  PBNakedPluginNode(
      Point topLeftCorner, Point bottomRightCorner, PBContext currentContext,
      {this.UUID})
      : super(topLeftCorner, bottomRightCorner, currentContext, UUID: UUID);

  /// Override this function if you want to make tree modification prior to the layout service.
  /// Be sure to return something or you will remove the node from the tree.
  List<PBIntermediateNode> layoutInstruction(List<PBIntermediateNode> layer) =>
      layer;

  PBNakedPluginNode generatePluginNode(
      Point topLeftCorner, Point bottomRightCorner, SketchNode originalRef);

  void extractInformation(SketchNode incomingNode);

  void addChild(PBIntermediateNode node);
}
