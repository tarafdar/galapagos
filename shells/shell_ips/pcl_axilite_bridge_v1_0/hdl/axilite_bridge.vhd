library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity axilite_bridge is
  generic (
            ADDR_WIDTH    : integer := 32;
            DATA_WIDTH    : integer := 512
          );
  port(
        aclk : in std_logic;
        aresetn : in std_logic;
        
        --MASTER INTERCFACE
        --Write Address Channel
        m_axi_awaddr : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        m_axi_awprot : out std_logic_vector(2 downto 0);
        m_axi_awqos : out std_logic_vector(3 downto 0);
        m_axi_awvalid : out std_logic;
        m_axi_awready : in std_logic;
        -- Write Data Channel
        m_axi_wdata : out std_logic_vector(DATA_WIDTH-1 downto 0);
        m_axi_wstrb : out std_logic_vector(DATA_WIDTH/8-1 downto 0);
        m_axi_wvalid : out std_logic;
        m_axi_wready : in std_logic;
        -- Read Response Channel
        m_axi_bresp : in std_logic_vector(1 downto 0);
        m_axi_bvalid : in std_logic;
        m_axi_bready : out std_logic;
        -- Read Address Channel
        m_axi_araddr : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        m_axi_arprot : out std_logic_vector(2 downto 0);
        m_axi_arqos : out std_logic_vector(3 downto 0);
        m_axi_arvalid : out std_logic;
        m_axi_arready : in std_logic;
        -- Read Data Channel
        m_axi_rdata : in std_logic_vector(DATA_WIDTH-1 downto 0);
        m_axi_rresp : in std_logic_vector(1 downto 0);
        m_axi_rvalid : in std_logic;
        m_axi_rready : out std_logic;
        
        --SLAVE INTERFACE
        s_axi_awaddr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        s_axi_awprot : in std_logic_vector(2 downto 0);
        s_axi_awqos : in std_logic_vector(3 downto 0);
        s_axi_awvalid : in std_logic;
        s_axi_awready : out std_logic;
        -- Write Data Channel
        s_axi_wdata : in std_logic_vector(DATA_WIDTH-1 downto 0);
        s_axi_wstrb : in std_logic_vector(DATA_WIDTH/8-1 downto 0);
        s_axi_wvalid : in std_logic;
        s_axi_wready : out std_logic;
        -- Read Response Channel
        s_axi_bresp : out std_logic_vector(1 downto 0);
        s_axi_bvalid : out std_logic;
        s_axi_bready : in std_logic;
        -- Read Address Channel
        s_axi_araddr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        s_axi_arprot : in std_logic_vector(2 downto 0);
        s_axi_arqos : in std_logic_vector(3 downto 0);
        s_axi_arvalid : in std_logic;
        s_axi_arready : out std_logic;
        -- Read Data Channel
        s_axi_rdata : out std_logic_vector(DATA_WIDTH-1 downto 0);
        s_axi_rresp : out std_logic_vector(1 downto 0);
        s_axi_rvalid : out std_logic;
        s_axi_rready : in std_logic
        
      );
end  axilite_bridge;

architecture RTL of axilite_bridge is
begin
    --Write Address Channel
    m_axi_awaddr <= s_axi_awaddr;
    m_axi_awprot <= s_axi_awprot;
    m_axi_awqos <= s_axi_awqos;
    m_axi_awvalid <= s_axi_awvalid;
    s_axi_awready <= m_axi_awready;
    --Write Data Channel
    m_axi_wdata <= s_axi_wdata;
    m_axi_wstrb <= s_axi_wstrb;
    m_axi_wvalid <= s_axi_wvalid;
    s_axi_wready <= m_axi_wready;
    --Read Reponse Channel
    s_axi_bresp <= m_axi_bresp;
    s_axi_bvalid <= m_axi_bvalid;
    m_axi_bready <= s_axi_bready;
    --Read Address Channel
    m_axi_araddr <= s_axi_araddr;
    m_axi_arprot <= s_axi_arprot;
    m_axi_arqos <= s_axi_arqos;
    m_axi_arvalid <= s_axi_arvalid;
    s_axi_arready <= m_axi_arready;
    --Read Data Channel
    s_axi_rdata <= m_axi_rdata;
    s_axi_rresp <= m_axi_rresp;
    s_axi_rvalid <= m_axi_rvalid;
    m_axi_rready <= s_axi_rready;
    m_axi_rready <= s_axi_rready;
end RTL;
