%% Creating a instance of iDynTree::RevoluteJoint for l_ankle_pitch

comp_icub   = iDynTree.KinDynComputations();
comp_icub.loadRobotModelFromFile('../../model.urdf');
mdl = comp_icub.model();
jointidx = mdl.getJointIndex('l_ankle_pitch');
l_ankle_pitch_jnt = mdl.getJoint(jointidx);
l_ankle_pitch_rev_jnt = l_ankle_pitch_jnt.asRevoluteJoint();
axis = l_ankle_pitch_rev_jnt.getAxis(child_index);
% Direction of the axis
axis.getDirection.toMatlab