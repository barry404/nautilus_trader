# Warning, this file is autogenerated by cbindgen. Don't modify this manually. */

from libc.stdint cimport uint8_t, uint16_t, uint64_t, int64_t

cdef extern from "../includes/model.h":

    const uint8_t FIXED_PRECISION # = 9

    const double FIXED_SCALAR # = 1000000000.0

    const double MONEY_MAX # = 9223372036.0

    const double MONEY_MIN # = -9223372036.0

    const double PRICE_MAX # = 9223372036.0

    const double PRICE_MIN # = -9223372036.0

    const double QUANTITY_MAX # = 18446744073.0

    const double QUANTITY_MIN # = 0.0

    cpdef enum AccountType:
        CASH # = 1,
        MARGIN # = 2,
        BETTING # = 3,

    cpdef enum AggregationSource:
        EXTERNAL # = 1,
        INTERNAL # = 2,

    cpdef enum AggressorSide:
        NO_AGGRESSOR # = 0,
        BUYER # = 1,
        SELLER # = 2,

    cpdef enum AssetClass:
        FX # = 1,
        EQUITY # = 2,
        COMMODITY # = 3,
        METAL # = 4,
        ENERGY # = 5,
        BOND # = 6,
        INDEX # = 7,
        CRYPTOCURRENCY # = 8,
        SPORTS_BETTING # = 9,

    cpdef enum AssetType:
        SPOT # = 1,
        SWAP # = 2,
        FUTURE # = 3,
        FORWARD # = 4,
        CFD # = 5,
        OPTION # = 6,
        WARRANT # = 7,

    cpdef enum BookAction:
        ADD # = 1,
        UPDATE # = 2,
        DELETE # = 3,
        CLEAR # = 4,

    cpdef enum BookType:
        # Top-of-book best bid/offer.
        L1_TBBO # = 1,
        # Market by price.
        L2_MBP # = 2,
        # Market by order.
        L3_MBO # = 3,

    cpdef enum ContingencyType:
        NO_CONTINGENCY # = 0,
        OCO # = 1,
        OTO # = 2,
        OUO # = 3,

    cpdef enum CurrencyType:
        CRYPTO # = 1,
        FIAT # = 2,

    cpdef enum DepthType:
        VOLUME # = 1,
        EXPOSURE # = 2,

    cpdef enum InstrumentCloseType:
        END_OF_SESSION # = 1,
        CONTRACT_EXPIRED # = 2,

    cpdef enum LiquiditySide:
        NO_LIQUIDITY_SIDE # = 0,
        MAKER # = 1,
        TAKER # = 2,

    cpdef enum MarketStatus:
        CLOSED # = 1,
        PRE_OPEN # = 2,
        OPEN # = 3,
        PAUSE # = 4,
        PRE_CLOSE # = 5,

    cpdef enum OmsType:
        UNSPECIFIED # = 0,
        NETTING # = 1,
        HEDGING # = 2,

    cpdef enum OptionKind:
        CALL # = 1,
        PUT # = 2,

    cpdef enum OrderSide:
        NO_ORDER_SIDE # = 0,
        BUY # = 1,
        SELL # = 2,

    cpdef enum OrderStatus:
        INITIALIZED # = 1,
        DENIED # = 2,
        SUBMITTED # = 3,
        ACCEPTED # = 4,
        REJECTED # = 5,
        CANCELED # = 6,
        EXPIRED # = 7,
        TRIGGERED # = 8,
        PENDING_UPDATE # = 9,
        PENDING_CANCEL # = 10,
        PARTIALLY_FILLED # = 11,
        FILLED # = 12,

    cpdef enum OrderType:
        MARKET # = 1,
        LIMIT # = 2,
        STOP_MARKET # = 3,
        STOP_LIMIT # = 4,
        MARKET_TO_LIMIT # = 5,
        MARKET_IF_TOUCHED # = 6,
        LIMIT_IF_TOUCHED # = 7,
        TRAILING_STOP_MARKET # = 8,
        TRAILING_STOP_LIMIT # = 9,

    cpdef enum PositionSide:
        NO_POSITION_SIDE # = 0,
        FLAT # = 1,
        LONG # = 2,
        SHORT # = 3,

    cpdef enum PriceType:
        BID # = 1,
        ASK # = 2,
        MID # = 3,
        LAST # = 4,

    cpdef enum TimeInForce:
        GTC # = 1,
        IOC # = 2,
        FOK # = 3,
        GTD # = 4,
        DAY # = 5,
        AT_THE_OPEN # = 6,
        AT_THE_CLOSE # = 7,

    cpdef enum TradingState:
        ACTIVE # = 1,
        HALTED # = 2,
        REDUCING # = 3,

    cpdef enum TrailingOffsetType:
        NO_TRAILING_OFFSET # = 0,
        PRICE # = 1,
        BASIS_POINTS # = 2,
        TICKS # = 3,
        PRICE_TIER # = 4,

    cpdef enum TriggerType:
        NO_TRIGGER # = 0,
        DEFAULT # = 1,
        BID_ASK # = 2,
        LAST_TRADE # = 3,
        DOUBLE_LAST # = 4,
        DOUBLE_BID_ASK # = 5,
        LAST_OR_BID_ASK # = 6,
        MID_POINT # = 7,
        MARK_PRICE # = 8,
        INDEX_PRICE # = 9,

    cdef struct BTreeMap_BookPrice__Level:
        pass

    cdef struct HashMap_u64__BookPrice:
        pass

    cdef struct Rc_String:
        pass

    cdef struct BarSpecification_t:
        uint64_t step;
        uint8_t aggregation;
        PriceType price_type;

    cdef struct Symbol_t:
        Rc_String *value;

    cdef struct Venue_t:
        Rc_String *value;

    cdef struct InstrumentId_t:
        Symbol_t symbol;
        Venue_t venue;

    cdef struct BarType_t:
        InstrumentId_t instrument_id;
        BarSpecification_t spec;
        AggregationSource aggregation_source;

    cdef struct Price_t:
        int64_t raw;
        uint8_t precision;

    cdef struct Quantity_t:
        uint64_t raw;
        uint8_t precision;

    cdef struct Bar_t:
        BarType_t bar_type;
        Price_t open;
        Price_t high;
        Price_t low;
        Price_t close;
        Quantity_t volume;
        uint64_t ts_event;
        uint64_t ts_init;

    # Represents a single quote tick in a financial market.
    cdef struct QuoteTick_t:
        InstrumentId_t instrument_id;
        Price_t bid;
        Price_t ask;
        Quantity_t bid_size;
        Quantity_t ask_size;
        uint64_t ts_event;
        uint64_t ts_init;

    cdef struct TradeId_t:
        Rc_String *value;

    # Represents a single trade tick in a financial market.
    cdef struct TradeTick_t:
        InstrumentId_t instrument_id;
        Price_t price;
        Quantity_t size;
        AggressorSide aggressor_side;
        TradeId_t trade_id;
        uint64_t ts_event;
        uint64_t ts_init;

    cdef struct AccountId_t:
        Rc_String *value;

    cdef struct ClientId_t:
        Rc_String *value;

    cdef struct ClientOrderId_t:
        Rc_String *value;

    cdef struct ComponentId_t:
        Rc_String *value;

    cdef struct ExecAlgorithmId_t:
        Rc_String *value;

    cdef struct OrderListId_t:
        Rc_String *value;

    cdef struct PositionId_t:
        Rc_String *value;

    cdef struct StrategyId_t:
        Rc_String *value;

    cdef struct TraderId_t:
        Rc_String *value;

    cdef struct VenueOrderId_t:
        Rc_String *value;

    cdef struct Ladder:
        OrderSide side;
        BTreeMap_BookPrice__Level *levels;
        HashMap_u64__BookPrice *cache;

    cdef struct OrderBook:
        Ladder bids;
        Ladder asks;
        InstrumentId_t instrument_id;
        BookType book_level;
        OrderSide last_side;
        uint64_t ts_last;

    cdef struct Currency_t:
        Rc_String *code;
        uint8_t precision;
        uint16_t iso4217;
        Rc_String *name;
        CurrencyType currency_type;

    cdef struct Money_t:
        int64_t raw;
        Currency_t currency;

    # Returns a [`BarSpecification`] as a C string pointer.
    const char *bar_specification_to_cstr(const BarSpecification_t *bar_spec);

    uint64_t bar_specification_hash(const BarSpecification_t *bar_spec);

    BarSpecification_t bar_specification_new(uint64_t step,
                                             uint8_t aggregation,
                                             uint8_t price_type);

    uint8_t bar_specification_eq(const BarSpecification_t *lhs, const BarSpecification_t *rhs);

    uint8_t bar_specification_lt(const BarSpecification_t *lhs, const BarSpecification_t *rhs);

    uint8_t bar_specification_le(const BarSpecification_t *lhs, const BarSpecification_t *rhs);

    uint8_t bar_specification_gt(const BarSpecification_t *lhs, const BarSpecification_t *rhs);

    uint8_t bar_specification_ge(const BarSpecification_t *lhs, const BarSpecification_t *rhs);

    BarType_t bar_type_new(InstrumentId_t instrument_id,
                           BarSpecification_t spec,
                           uint8_t aggregation_source);

    BarType_t bar_type_copy(const BarType_t *bar_type);

    uint8_t bar_type_eq(const BarType_t *lhs, const BarType_t *rhs);

    uint8_t bar_type_lt(const BarType_t *lhs, const BarType_t *rhs);

    uint8_t bar_type_le(const BarType_t *lhs, const BarType_t *rhs);

    uint8_t bar_type_gt(const BarType_t *lhs, const BarType_t *rhs);

    uint8_t bar_type_ge(const BarType_t *lhs, const BarType_t *rhs);

    uint64_t bar_type_hash(const BarType_t *bar_type);

    # Returns a [`BarType`] as a C string pointer.
    const char *bar_type_to_cstr(const BarType_t *bar_type);

    void bar_type_free(BarType_t bar_type);

    Bar_t bar_new(BarType_t bar_type,
                  Price_t open,
                  Price_t high,
                  Price_t low,
                  Price_t close,
                  Quantity_t volume,
                  uint64_t ts_event,
                  uint64_t ts_init);

    Bar_t bar_new_from_raw(BarType_t bar_type,
                           int64_t open,
                           int64_t high,
                           int64_t low,
                           int64_t close,
                           uint8_t price_prec,
                           uint64_t volume,
                           uint8_t size_prec,
                           uint64_t ts_event,
                           uint64_t ts_init);

    # Returns a [`Bar`] as a C string.
    const char *bar_to_cstr(const Bar_t *bar);

    Bar_t bar_copy(const Bar_t *bar);

    void bar_free(Bar_t bar);

    uint8_t bar_eq(const Bar_t *lhs, const Bar_t *rhs);

    uint64_t bar_hash(const Bar_t *bar);

    void quote_tick_free(QuoteTick_t tick);

    QuoteTick_t quote_tick_copy(const QuoteTick_t *tick);

    QuoteTick_t quote_tick_new(InstrumentId_t instrument_id,
                               Price_t bid,
                               Price_t ask,
                               Quantity_t bid_size,
                               Quantity_t ask_size,
                               uint64_t ts_event,
                               uint64_t ts_init);

    QuoteTick_t quote_tick_from_raw(InstrumentId_t instrument_id,
                                    int64_t bid,
                                    int64_t ask,
                                    uint8_t bid_price_prec,
                                    uint8_t ask_price_prec,
                                    uint64_t bid_size,
                                    uint64_t ask_size,
                                    uint8_t bid_size_prec,
                                    uint8_t ask_size_prec,
                                    uint64_t ts_event,
                                    uint64_t ts_init);

    # Returns a [`QuoteTick`] as a C string pointer.
    const char *quote_tick_to_cstr(const QuoteTick_t *tick);

    void trade_tick_free(TradeTick_t tick);

    TradeTick_t trade_tick_copy(const TradeTick_t *tick);

    TradeTick_t trade_tick_from_raw(InstrumentId_t instrument_id,
                                    int64_t price,
                                    uint8_t price_prec,
                                    uint64_t size,
                                    uint8_t size_prec,
                                    AggressorSide aggressor_side,
                                    TradeId_t trade_id,
                                    uint64_t ts_event,
                                    uint64_t ts_init);

    # Returns a [`TradeTick`] as a C string pointer.
    const char *trade_tick_to_cstr(const TradeTick_t *tick);

    const char *account_type_to_cstr(AccountType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    AccountType account_type_from_cstr(const char *ptr);

    const char *aggregation_source_to_cstr(AggregationSource value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    AggregationSource aggregation_source_from_cstr(const char *ptr);

    const char *aggressor_side_to_cstr(AggressorSide value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    AggressorSide aggressor_side_from_cstr(const char *ptr);

    const char *asset_class_to_cstr(AssetClass value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    AssetClass asset_class_from_cstr(const char *ptr);

    const char *asset_type_to_cstr(AssetType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    AssetType asset_type_from_cstr(const char *ptr);

    const char *bar_aggregation_to_cstr(uint8_t value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    uint8_t bar_aggregation_from_cstr(const char *ptr);

    const char *book_action_to_cstr(BookAction value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    BookAction book_action_from_cstr(const char *ptr);

    const char *book_type_to_cstr(BookType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    BookType book_type_from_cstr(const char *ptr);

    const char *contingency_type_to_cstr(ContingencyType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    ContingencyType contingency_type_from_cstr(const char *ptr);

    const char *currency_type_to_cstr(CurrencyType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    CurrencyType currency_type_from_cstr(const char *ptr);

    const char *depth_type_to_cstr(DepthType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    InstrumentCloseType instrument_close_type_from_cstr(const char *ptr);

    const char *instrument_close_type_to_cstr(InstrumentCloseType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    DepthType depth_type_from_cstr(const char *ptr);

    const char *liquidity_side_to_cstr(LiquiditySide value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    LiquiditySide liquidity_side_from_cstr(const char *ptr);

    const char *market_status_to_cstr(MarketStatus value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    MarketStatus market_status_from_cstr(const char *ptr);

    const char *oms_type_to_cstr(OmsType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    OmsType oms_type_from_cstr(const char *ptr);

    const char *option_kind_to_cstr(OptionKind value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    OptionKind option_kind_from_cstr(const char *ptr);

    const char *order_side_to_cstr(OrderSide value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    OrderSide order_side_from_cstr(const char *ptr);

    const char *order_status_to_cstr(OrderStatus value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    OrderStatus order_status_from_cstr(const char *ptr);

    const char *order_type_to_cstr(OrderType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    OrderType order_type_from_cstr(const char *ptr);

    const char *position_side_to_cstr(PositionSide value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    PositionSide position_side_from_cstr(const char *ptr);

    const char *price_type_to_cstr(PriceType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    PriceType price_type_from_cstr(const char *ptr);

    const char *time_in_force_to_cstr(TimeInForce value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    TimeInForce time_in_force_from_cstr(const char *ptr);

    const char *trading_state_to_cstr(TradingState value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    TradingState trading_state_from_cstr(const char *ptr);

    const char *trailing_offset_type_to_cstr(TrailingOffsetType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    TrailingOffsetType trailing_offset_type_from_cstr(const char *ptr);

    const char *trigger_type_to_cstr(TriggerType value);

    # Returns an enum from a Python string.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    TriggerType trigger_type_from_cstr(const char *ptr);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    AccountId_t account_id_new(const char *ptr);

    AccountId_t account_id_clone(const AccountId_t *account_id);

    # Frees the memory for the given `account_id` by dropping.
    void account_id_free(AccountId_t account_id);

    # Returns an [`AccountId`] as a C string pointer.
    const char *account_id_to_cstr(const AccountId_t *account_id);

    uint8_t account_id_eq(const AccountId_t *lhs, const AccountId_t *rhs);

    uint64_t account_id_hash(const AccountId_t *account_id);

    # Returns a Nautilus identifier from C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    ClientId_t client_id_new(const char *ptr);

    ClientId_t client_id_clone(const ClientId_t *client_id);

    # Frees the memory for the given `client_id` by dropping.
    void client_id_free(ClientId_t client_id);

    # Returns a [`ClientId`] identifier as a C string pointer.
    const char *client_id_to_cstr(const ClientId_t *client_id);

    uint8_t client_id_eq(const ClientId_t *lhs, const ClientId_t *rhs);

    uint64_t client_id_hash(const ClientId_t *client_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    ClientOrderId_t client_order_id_new(const char *ptr);

    ClientOrderId_t client_order_id_clone(const ClientOrderId_t *client_order_id);

    # Frees the memory for the given `client_order_id` by dropping.
    void client_order_id_free(ClientOrderId_t client_order_id);

    # Returns a [`ClientOrderId`] as a C string pointer.
    const char *client_order_id_to_cstr(const ClientOrderId_t *client_order_id);

    uint8_t client_order_id_eq(const ClientOrderId_t *lhs, const ClientOrderId_t *rhs);

    uint64_t client_order_id_hash(const ClientOrderId_t *client_order_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    ComponentId_t component_id_new(const char *ptr);

    ComponentId_t component_id_clone(const ComponentId_t *component_id);

    # Frees the memory for the given `component_id` by dropping.
    void component_id_free(ComponentId_t component_id);

    # Returns a [`ComponentId`] identifier as a C string pointer.
    const char *component_id_to_cstr(const ComponentId_t *component_id);

    uint8_t component_id_eq(const ComponentId_t *lhs, const ComponentId_t *rhs);

    uint64_t component_id_hash(const ComponentId_t *component_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    ExecAlgorithmId_t exec_algorithm_id_new(const char *ptr);

    ExecAlgorithmId_t exec_algorithm_id_clone(const ExecAlgorithmId_t *exec_algorithm_id);

    # Frees the memory for the given `exec_algorithm_id` by dropping.
    void exec_algorithm_id_free(ExecAlgorithmId_t exec_algorithm_id);

    # Returns an [`ExecAlgorithmId`] identifier as a C string pointer.
    const char *exec_algorithm_id_to_cstr(const ExecAlgorithmId_t *exec_algorithm_id);

    uint8_t exec_algorithm_id_eq(const ExecAlgorithmId_t *lhs, const ExecAlgorithmId_t *rhs);

    uint64_t exec_algorithm_id_hash(const ExecAlgorithmId_t *exec_algorithm_id);

    InstrumentId_t instrument_id_new(const Symbol_t *symbol, const Venue_t *venue);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    InstrumentId_t instrument_id_new_from_cstr(const char *ptr);

    InstrumentId_t instrument_id_clone(const InstrumentId_t *instrument_id);

    # Frees the memory for the given `instrument_id` by dropping.
    void instrument_id_free(InstrumentId_t instrument_id);

    # Returns an [`InstrumentId`] as a C string pointer.
    const char *instrument_id_to_cstr(const InstrumentId_t *instrument_id);

    uint8_t instrument_id_eq(const InstrumentId_t *lhs, const InstrumentId_t *rhs);

    uint64_t instrument_id_hash(const InstrumentId_t *instrument_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    OrderListId_t order_list_id_new(const char *ptr);

    OrderListId_t order_list_id_clone(const OrderListId_t *order_list_id);

    # Frees the memory for the given `order_list_id` by dropping.
    void order_list_id_free(OrderListId_t order_list_id);

    # Returns an [`OrderListId`] as a C string pointer.
    const char *order_list_id_to_cstr(const OrderListId_t *order_list_id);

    uint8_t order_list_id_eq(const OrderListId_t *lhs, const OrderListId_t *rhs);

    uint64_t order_list_id_hash(const OrderListId_t *order_list_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    PositionId_t position_id_new(const char *ptr);

    PositionId_t position_id_clone(const PositionId_t *position_id);

    # Frees the memory for the given `position_id` by dropping.
    void position_id_free(PositionId_t position_id);

    # Returns a [`PositionId`] identifier as a C string pointer.
    const char *position_id_to_cstr(const PositionId_t *position_id);

    uint8_t position_id_eq(const PositionId_t *lhs, const PositionId_t *rhs);

    uint64_t position_id_hash(const PositionId_t *position_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    StrategyId_t strategy_id_new(const char *ptr);

    StrategyId_t strategy_id_clone(const StrategyId_t *strategy_id);

    # Frees the memory for the given `strategy_id` by dropping.
    void strategy_id_free(StrategyId_t strategy_id);

    # Returns a [`StrategyId`] as a C string pointer.
    const char *strategy_id_to_cstr(const StrategyId_t *strategy_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    Symbol_t symbol_new(const char *ptr);

    Symbol_t symbol_clone(const Symbol_t *symbol);

    # Frees the memory for the given [Symbol] by dropping.
    void symbol_free(Symbol_t symbol);

    # Returns a [`Symbol`] as a C string pointer.
    const char *symbol_to_cstr(const Symbol_t *symbol);

    uint8_t symbol_eq(const Symbol_t *lhs, const Symbol_t *rhs);

    uint64_t symbol_hash(const Symbol_t *symbol);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    TradeId_t trade_id_new(const char *ptr);

    TradeId_t trade_id_clone(const TradeId_t *trade_id);

    # Frees the memory for the given `trade_id` by dropping.
    void trade_id_free(TradeId_t trade_id);

    # Returns [TradeId] as a C string pointer.
    const char *trade_id_to_cstr(const TradeId_t *trade_id);

    uint8_t trade_id_eq(const TradeId_t *lhs, const TradeId_t *rhs);

    uint64_t trade_id_hash(const TradeId_t *trade_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    TraderId_t trader_id_new(const char *ptr);

    TraderId_t trader_id_clone(const TraderId_t *trader_id);

    # Frees the memory for the given `trader_id` by dropping.
    void trader_id_free(TraderId_t trader_id);

    # Returns a [`TraderId`] as a C string pointer.
    const char *trader_id_to_cstr(const TraderId_t *trader_id);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    Venue_t venue_new(const char *ptr);

    Venue_t venue_clone(const Venue_t *venue);

    # Frees the memory for the given `venue` by dropping.
    void venue_free(Venue_t venue);

    # Returns a [`Venue`] identifier as a C string pointer.
    const char *venue_to_cstr(const Venue_t *venue);

    uint8_t venue_eq(const Venue_t *lhs, const Venue_t *rhs);

    uint64_t venue_hash(const Venue_t *venue);

    # Returns a Nautilus identifier from a C string pointer.
    #
    # # Safety
    # - Assumes `ptr` is a valid C string pointer.
    VenueOrderId_t venue_order_id_new(const char *ptr);

    VenueOrderId_t venue_order_id_clone(const VenueOrderId_t *venue_order_id);

    # Frees the memory for the given `venue_order_id` by dropping.
    void venue_order_id_free(VenueOrderId_t venue_order_id);

    const char *venue_order_id_to_cstr(const VenueOrderId_t *venue_order_id);

    uint8_t venue_order_id_eq(const VenueOrderId_t *lhs, const VenueOrderId_t *rhs);

    uint64_t venue_order_id_hash(const VenueOrderId_t *venue_order_id);

    OrderBook order_book_new(InstrumentId_t instrument_id, BookType book_level);

    # Returns a [`Currency`] from pointers and primitives.
    #
    # # Safety
    # - Assumes `code_ptr` is a valid C string pointer.
    # - Assumes `name_ptr` is a valid C string pointer.
    Currency_t currency_from_py(const char *code_ptr,
                                uint8_t precision,
                                uint16_t iso4217,
                                const char *name_ptr,
                                CurrencyType currency_type);

    Currency_t currency_clone(const Currency_t *currency);

    void currency_free(Currency_t currency);

    const char *currency_to_cstr(const Currency_t *currency);

    const char *currency_code_to_cstr(const Currency_t *currency);

    const char *currency_name_to_cstr(const Currency_t *currency);

    uint8_t currency_eq(const Currency_t *lhs, const Currency_t *rhs);

    uint64_t currency_hash(const Currency_t *currency);

    Money_t money_new(double amount, Currency_t currency);

    Money_t money_from_raw(int64_t raw, Currency_t currency);

    void money_free(Money_t money);

    double money_as_f64(const Money_t *money);

    void money_add_assign(Money_t a, Money_t b);

    void money_sub_assign(Money_t a, Money_t b);

    Price_t price_new(double value, uint8_t precision);

    Price_t price_from_raw(int64_t raw, uint8_t precision);

    double price_as_f64(const Price_t *price);

    void price_add_assign(Price_t a, Price_t b);

    void price_sub_assign(Price_t a, Price_t b);

    Quantity_t quantity_new(double value, uint8_t precision);

    Quantity_t quantity_from_raw(uint64_t raw, uint8_t precision);

    double quantity_as_f64(const Quantity_t *qty);

    void quantity_add_assign(Quantity_t a, Quantity_t b);

    void quantity_add_assign_u64(Quantity_t a, uint64_t b);

    void quantity_sub_assign(Quantity_t a, Quantity_t b);

    void quantity_sub_assign_u64(Quantity_t a, uint64_t b);
