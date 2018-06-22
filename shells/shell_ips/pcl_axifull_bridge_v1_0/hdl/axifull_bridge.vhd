library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity axifull_bridge is
  generic (
            M_ID_WIDTH    : integer := 5;
            S_ID_WIDTH    : integer := 1;
            ADDR_WIDTH    : integer := 32;
            DATA_WIDTH    : integer := 512
          );
  port(
        aclk : in std_logic;
        aresetn : in std_logic;
        
        --MASTER INTERCFACE
        --Write Address Channel
        m_axi_awid : out std_logic_vector(M_ID_WIDTH-1 downto 0);
        m_axi_awaddr : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        m_axi_awlen : out std_logic_vector(7 downto 0);
        m_axi_awsize : out std_logic_vector(2 downto 0);
        m_axi_awburst : out std_logic_vector(1 downto 0);
        m_axi_awlock : out std_logic_vector(0 downto 0);
        m_axi_awprot : out std_logic_vector(2 downto 0);
        m_axi_awqos : out std_logic_vector(3 downto 0);
        m_axi_awcache : out std_logic_vector(3 downto 0);
        m_axi_awvalid : out std_logic;
        m_axi_awready : in std_logic;
        -- Write Data Channel
        m_axi_wdata : out std_logic_vector(DATA_WIDTH-1 downto 0);
        m_axi_wstrb : out std_logic_vector(DATA_WIDTH/8-1 downto 0);
        m_axi_wlast : out std_logic;
        m_axi_wvalid : out std_logic;
        m_axi_wready : in std_logic;
        -- Read Response Channel
        m_axi_bid : in std_logic_vector(M_ID_WIDTH-1 downto 0);
        m_axi_bresp : in std_logic_vector(1 downto 0);
        m_axi_bvalid : in std_logic;
        m_axi_bready : out std_logic;
        -- Read Address Channel
        m_axi_arid : out std_logic_vector(M_ID_WIDTH-1 downto 0);
        m_axi_araddr : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        m_axi_arlen : out std_logic_vector(7 downto 0);
        m_axi_arsize : out std_logic_vector(2 downto 0);
        m_axi_arburst : out std_logic_vector(1 downto 0);
        m_axi_arlock : out std_logic_vector(0 downto 0);
        m_axi_arprot : out std_logic_vector(2 downto 0);
        m_axi_arqos : out std_logic_vector(3 downto 0);
        m_axi_arcache : out std_logic_vector(3 downto 0);
        m_axi_arvalid : out std_logic;
        m_axi_arready : in std_logic;
        -- Read Data Channel
        m_axi_rid : in std_logic_vector(M_ID_WIDTH-1 downto 0);
        m_axi_rdata : in std_logic_vector(DATA_WIDTH-1 downto 0);
        m_axi_rresp : in std_logic_vector(1 downto 0);
        m_axi_rlast : in std_logic;
        m_axi_rvalid : in std_logic;
        m_axi_rready : out std_logic;
        
        --SLAVE INTERFACE
        s_axi_awid : in std_logic_vector(S_ID_WIDTH-1 downto 0);
        s_axi_awaddr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        s_axi_awlen : in std_logic_vector(7 downto 0);
        s_axi_awsize : in std_logic_vector(2 downto 0);
        s_axi_awburst : in std_logic_vector(1 downto 0);
        s_axi_awlock : in std_logic_vector(0 downto 0);
        s_axi_awprot : in std_logic_vector(2 downto 0);
        s_axi_awqos : in std_logic_vector(3 downto 0);
        s_axi_awcache : in std_logic_vector(3 downto 0);
        s_axi_awvalid : in std_logic;
        s_axi_awready : out std_logic;
        -- Write Data Channel
        s_axi_wdata : in std_logic_vector(DATA_WIDTH-1 downto 0);
        s_axi_wstrb : in std_logic_vector(DATA_WIDTH/8-1 downto 0);
        s_axi_wlast : in std_logic;
        s_axi_wvalid : in std_logic;
        s_axi_wready : out std_logic;
        -- Read Response Channel
        s_axi_bid : out std_logic_vector(S_ID_WIDTH-1 downto 0);
        s_axi_bresp : out std_logic_vector(1 downto 0);
        s_axi_bvalid : out std_logic;
        s_axi_bready : in std_logic;
        -- Read Address Channel
        s_axi_arid : in std_logic_vector(S_ID_WIDTH-1 downto 0);
        s_axi_araddr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        s_axi_arlen : in std_logic_vector(7 downto 0);
        s_axi_arsize : in std_logic_vector(2 downto 0);
        s_axi_arburst : in std_logic_vector(1 downto 0);
        s_axi_arlock : in std_logic_vector(0 downto 0);
        s_axi_arprot : in std_logic_vector(2 downto 0);
        s_axi_arqos : in std_logic_vector(3 downto 0);
        s_axi_arcache : in std_logic_vector(3 downto 0);
        s_axi_arvalid : in std_logic;
        s_axi_arready : out std_logic;
        -- Read Data Channel
        s_axi_rid : out std_logic_vector(S_ID_WIDTH-1 downto 0);
        s_axi_rdata : out std_logic_vector(DATA_WIDTH-1 downto 0);
        s_axi_rresp : out std_logic_vector(1 downto 0);
        s_axi_rlast : out std_logic;
        s_axi_rvalid : out std_logic;
        s_axi_rready : in std_logic
        
      );
end axifull_bridge;

architecture RTL of axifull_bridge is

  function get_max(LEFT, RIGHT: INTEGER) return INTEGER is
  begin
    if LEFT > RIGHT then return LEFT;
    else return RIGHT;
    end if;
  end get_max;

  constant MAX_ID_WIDTH : integer := get_max(M_ID_WIDTH, S_ID_WIDTH);

  signal awid : std_logic_vector(MAX_ID_WIDTH-1 downto 0);
  signal bid : std_logic_vector(MAX_ID_WIDTH-1 downto 0);
  signal arid : std_logic_vector(MAX_ID_WIDTH-1 downto 0);
  signal rid : std_logic_vector(MAX_ID_WIDTH-1 downto 0);
begin
    --Write Address Channel
    awid(S_ID_WIDTH-1 downto 0) <= s_axi_awid;
    awid(MAX_ID_WIDTH-1 downto S_ID_WIDTH) <= (others =>'0');
    m_axi_awid <= awid(M_ID_WIDTH-1 downto 0);
    m_axi_awaddr <= s_axi_awaddr;
    m_axi_awlen <= s_axi_awlen;
    m_axi_awsize <= s_axi_awsize;
    m_axi_awburst <= s_axi_awburst;
    m_axi_awlock <= s_axi_awlock;
    m_axi_awprot <= s_axi_awprot;
    m_axi_awqos <= s_axi_awqos;
    m_axi_awcache <= s_axi_awcache;
    m_axi_awvalid <= s_axi_awvalid;
    s_axi_awready <= m_axi_awready;
    --Write Data Channel
    m_axi_wdata <= s_axi_wdata;
    m_axi_wstrb <= s_axi_wstrb;
    m_axi_wlast <= s_axi_wlast;
    m_axi_wvalid <= s_axi_wvalid;
    s_axi_wready <= m_axi_wready;
    --Read Reponse Channel
    bid(M_ID_WIDTH-1 downto 0) <= m_axi_bid;
    bid(MAX_ID_WIDTH-1 downto M_ID_WIDTH) <= (others =>'0');
    s_axi_bid <= bid(S_ID_WIDTH-1 downto 0);
    s_axi_bresp <= m_axi_bresp;
    s_axi_bvalid <= m_axi_bvalid;
    m_axi_bready <= s_axi_bready;
    --Read Address Channel
    arid(S_ID_WIDTH-1 downto 0) <= s_axi_arid;
    arid(MAX_ID_WIDTH-1 downto S_ID_WIDTH) <= (others =>'0');
    m_axi_arid <= arid(M_ID_WIDTH-1 downto 0);
    m_axi_araddr <= s_axi_araddr;
    m_axi_arlen <= s_axi_arlen;
    m_axi_arsize <= s_axi_arsize;
    m_axi_arburst <= s_axi_arburst;
    m_axi_arlock <= s_axi_arlock;
    m_axi_arprot <= s_axi_arprot;
    m_axi_arqos <= s_axi_arqos;
    m_axi_arcache <= s_axi_arcache;
    m_axi_arvalid <= s_axi_arvalid;
    s_axi_arready <= m_axi_arready;
    --Read Data Channel
    rid(M_ID_WIDTH-1 downto 0) <= m_axi_rid;
    rid(MAX_ID_WIDTH-1 downto M_ID_WIDTH) <= (others =>'0');
    s_axi_rid <= rid(S_ID_WIDTH-1 downto 0);
    s_axi_rdata <= m_axi_rdata;
    s_axi_rresp <= m_axi_rresp;
    s_axi_rlast <= m_axi_rlast;
    s_axi_rvalid <= m_axi_rvalid;
    m_axi_rready <= s_axi_rready;
    m_axi_rready <= s_axi_rready;
end RTL;


