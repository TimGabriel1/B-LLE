module LLE.Data where

import Types.Data
import Data.Int


data DataPayload = DataPayload
  { header :: DataHeader
  , payload :: Int
  , mic :: Maybe Int
  }

data DataHeader = DataHeader
  { llid :: Int
  , nsen :: Int
  , sn :: Int
  , md :: Int
  , cp :: Int
  , rfu :: Int
  , length :: Int8
  , cteInfo :: Maybe Int8
  }

data ControlPDU = ControlPDU
  { opcode :: ControlOpCode
  , _data :: Int
  }

data ControlOpCode
  = LL_CONNECTION_UPDATE_IND
  | LL_CHANNEL_MAP_IND
  | LL_TERMINATE_IND
  | LL_ENC_REQ
  | LL_ENC_RSP
  | LL_START_ENC_REQ
  | LL_START_ENC_RSP
  | LL_UNKNOWN_RSP
  | LL_FEATURE_REQ
  | LL_FEATURE_RSP
  | LL_PAUSE_ENC_REQ
  | LL_PAUSE_ENC_RSP
  | LL_VERSION_IND
  | LL_REJECT_IND
  | LL_SLAVE_FEATURE_REQ
  | LL_CONNECTION_PARAM_REQ
  | LL_CONNECTION_PARAM_RSP
  | LL_REJECT_EXT_IND
  | LL_PING_REQ
  | LL_CLOCK_ACCURACY_REQ
  | LL_CLOCK_ACCURACY_RSP
  | LL_RESERVED


instance Enum ControlOpCode where
  fromEnum x = case x of
   LL_CONNECTION_UPDATE_IND -> 0
   LL_CHANNEL_MAP_IND -> 1
   LL_TERMINATE_IND -> 2
   LL_ENC_REQ -> 3
   LL_ENC_RSP -> 4
   LL_START_ENC_REQ -> 5
   LL_START_ENC_RSP -> 6
   LL_UNKNOWN_RSP -> 7
   LL_FEATURE_REQ -> 8
   LL_FEATURE_RSP -> 9
   LL_PAUSE_ENC_REQ -> 10
   LL_PAUSE_ENC_RSP -> 11
   LL_VERSION_IND -> 12
   LL_REJECT_IND -> 13
   LL_SLAVE_FEATURE_REQ -> 14
   LL_CONNECTION_PARAM_REQ -> 15
   LL_CONNECTION_PARAM_RSP -> 16
   LL_REJECT_EXT_IND -> 17
   LL_PING_REQ -> 18
   LL_CLOCK_ACCURACY_REQ -> 19
   LL_CLOCK_ACCURACY_RSP -> 20
   LL_RESERVED -> 21

  toEnum x = case x of
   0 -> LL_CONNECTION_UPDATE_IND
   1 -> LL_CHANNEL_MAP_IND
   2 -> LL_TERMINATE_IND
   3 -> LL_ENC_REQ
   4 -> LL_ENC_RSP
   5 -> LL_START_ENC_REQ
   6 -> LL_START_ENC_RSP
   7 -> LL_UNKNOWN_RSP
   8 -> LL_FEATURE_REQ
   9 -> LL_FEATURE_RSP
   10 -> LL_PAUSE_ENC_REQ
   11 -> LL_PAUSE_ENC_RSP
   12 -> LL_VERSION_IND
   13 -> LL_REJECT_IND
   14 -> LL_SLAVE_FEATURE_REQ
   15 -> LL_CONNECTION_PARAM_REQ
   16 -> LL_CONNECTION_PARAM_RSP
   17 -> LL_REJECT_EXT_IND
   18 -> LL_PING_REQ
   19 -> LL_CLOCK_ACCURACY_REQ
   20 -> LL_CLOCK_ACCURACY_RSP
   _ -> LL_RESERVED