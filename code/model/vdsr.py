import torch.nn as nn 
import common 
from itertools import izip 

def make_model(args):
    return VDSR(args)

class VDSR(nn.Module): 
    def __init__(self, args, conv=common.default_conv): 
        super(VDSR, self).__init__()

        kernel_size = 3 
        self.scale = args.scale[0]
        self.is_residual = args.n_channel_in == args.n_channel_out
        
        head = [conv(args.n_channel_in, args.n_feats, kernel_size, bias=True),
                nn.ReLU(inplace=True)]
        self.head = nn.Sequential(*head)
        
        body = []
        for _ in xrange(args.n_layers - 2): 
            body.append(conv(args.n_feats, args.n_feats, kernel_size,True))
            body.append(nn.ReLU(inplace=True))
        self.body = nn.Sequential(*body)

        self.tail = conv(args.n_feats, args.n_channel_out, kernel_size, bias=True)
        
    def forward(self, x):
        out = self.head(x)
        self.features = [self.body(out)]
        out = self.tail(self.features[0])
        return out + x if (self.is_residual) else out